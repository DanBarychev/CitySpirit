//
//  DescriptionViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit
import Button

class HealthDescriptionViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var dropinButton: BTNDropinButton!
    
    var name: String?
    var latitude: Double?
    var longitude: Double?
    var address: String?
    var phoneNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = name
        addressLabel.text = address!
        phoneNumberLabel.text = phoneNumber!
        
        
        let location: BTNLocation = BTNLocation.init(name: "Uber", latitude: latitude!, longitude: longitude!);
        let context: BTNContext = BTNContext.init(subjectLocation: location);
        
        if let button = self.dropinButton {
            
            button.buttonId = "btn-1000f4d79ce765d9"
            
            button.prepare(with: context, completion: { (isDisplayable: Bool) -> Void in
                print("Displayable: \(isDisplayable)")
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToHealthMap" {
            let nav = segue.destination as! UINavigationController
            let newViewController = nav.topViewController as! HealthMapViewController
            
            newViewController.locationLatitude = latitude
            newViewController.locationLongitude = longitude
            newViewController.locationName = name
            newViewController.locationAddress = address
        }
    }
    
    @IBAction func unwindToHealthDescription(_ sender: UIStoryboardSegue) {
    }
 

}
