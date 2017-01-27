//
//  LoginViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/22/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    func handleLogin() {
        /*the name and email textfields act as the
         email and password textfields respectively */
        guard let email = emailTextField.text, let password = passwordTextField.text
            else {
                print("ya")
                //invalid entry
                return
        }
        
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            
            if error != nil {
                print(error)
                
                let loginAlert = UIAlertController(title: "Invalid Login", message: "There Was An Error In The E-Mail Or Password", preferredStyle: UIAlertControllerStyle.alert)
                loginAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(loginAlert, animated: true, completion: nil)
                
                return
            }
                
            else {
                print("User Successfully Logged In")
                
                //Segue proceeds
                self.performSegue(withIdentifier: "Login", sender: nil)
            }
            
        })
    }
    
    // MARK: Actions
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        handleLogin()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 
    @IBAction func unwindToLoginScreen(_ sender: UIStoryboardSegue) {
    }

}
