//
//  ActivitiesDescriptionViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit
import Button

class ActivitiesDescriptionViewController: UIViewController {
    
    // MARK Properties:
    var activityName: String?
    var locationName: String?
    var locationAddress: String?
    var locationLatitude: Double?
    var locationLongitude: Double?
    var activityType: String?
    var startTime: String?
    var endTime: String?
    
    @IBOutlet weak var activityTypeLabel: UILabel!
    @IBOutlet weak var facilityNameLabel: UILabel!
    @IBOutlet weak var startTimeLabel: UILabel!
    @IBOutlet weak var endTimeLabel: UILabel!
    
    @IBOutlet weak var dropinButton: BTNDropinButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = activityName
        activityTypeLabel.text = activityType
        facilityNameLabel.text = locationName
        startTimeLabel.text = startTime
        endTimeLabel.text = endTime
        
        
        
        let location: BTNLocation = BTNLocation.init(name: "Uber", latitude: locationLatitude!, longitude: locationLongitude!);
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
        if segue.identifier == "GoToActivitiesMap" {
            let nav = segue.destination as! UINavigationController
            let newViewController = nav.topViewController as! ActivitiesMapViewController
    
            newViewController.locationName = locationName
            newViewController.activityName = activityName
            newViewController.locationAddress = locationAddress
            newViewController.locationLatitude = locationLatitude
            newViewController.locationLongitude = locationLongitude
        }
    }
 
    
    @IBAction func unwindToActivitiesDescription(_ sender: UIStoryboardSegue) {
    }

}
