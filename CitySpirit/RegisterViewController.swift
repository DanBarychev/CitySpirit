//
//  RegisterViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/22/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
    
    func handleRegister() {
        guard let name = nameTextField.text, let email = emailTextField.text, let password = passwordTextField.text
            else {
                //invalid entry
                return
        }
        
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user: FIRUser?, error) in
            
            if error != nil {
                print(error)
                
                let registrationAlert = UIAlertController(title: "Invalid Registration", message: "There Was An Error With The Submission", preferredStyle: UIAlertControllerStyle.alert)
                registrationAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(registrationAlert, animated: true, completion: nil)
            }
            
            guard let uid = user?.uid else {
                return
            }
            
            self.finishRegistrationWithUserData(uid, name: name, email: email)
        })
    }
    
    func finishRegistrationWithUserData(_ uid: String, name: String, email: String) {
        
        //Registration of user's data in Firebase
        let ref = FIRDatabase.database().reference()
        let usersRef = ref.child("users").child(uid)
        let values = ["name": name, "email": email] as [String : Any]
        usersRef.updateChildValues(values, withCompletionBlock: { (error2, ref) in
            
            if error2 != nil {
                print(error2)
                
                return
            }
                
            else {
                print("User properly saved into database")
                
                //User properly registered and segue proceeds
                self.performSegue(withIdentifier: "Register", sender: nil)
            }
        })
        
    }
    
    // MARK: Actions
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        handleRegister()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
