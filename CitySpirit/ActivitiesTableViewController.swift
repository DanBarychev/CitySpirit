//
//  ViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/20/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit

class ActivitiesTableViewController: UITableViewController {

    let locations = [["Facility Web ID": "796", "End Time": "06:00 PM", "Program ID": "6591", "Wednesday": "", "Activity Type": "Soccer",
                      "Age High": "12", "Program Name": "Indoor Soccer", "Sunday": "", "Age Description": "Youth", "Saturday": "", "Gender": "M/F",
                      "Monday": "", "Start Time": "05:00 PM", "Age Low": "6", "Facility Name": "C.B. Moore", "Tuesday": "", "End Date": "10/22/2015 12:00:00 AM",
                      "Thursday": "1", "Friday": ""], ["Facility Web ID": "820", "End Time": "04:00 PM", "Program ID": "8583", "Wednesday": "",
                        "Activity Type": "Football", "Age High": "16", "Program Name": "Flag Football", "Sunday": "", "Age Description": "12 to 16",
                        "Saturday": "1", "Gender": "M", "Monday": "", "Start Time": "11:00 AM", "Age Low": "12", "Facility Name": "Rivera", "Tuesday": "",
                        "End Date": "12/19/2015 12:00:00 AM", "Thursday": "", "Friday": ""], ["Facility WebID": "846", "End Time": "06:00 PM", "Program ID": "10375",
                        "Wednesday": "1", "Activity Type": "Soccer", "Age High": "18", "Program Name": "Soccer Boys High School", "Sunday": "", "Age Description": "", "Saturday": "",
                        "Gender": "M", "Monday": "1", "Start Time": "03:30 PM", "Age Low": "14", "Facility Name": "Vogt", "Tuesday": "1", "End Date": "11/15/2015 12:00:00 AM",
                        "Thursday": "1", "Friday": "1"], ["Facility Web ID": "849", "End Time": "05:30 PM", "Program ID": "9547", "Wednesday": "", "Activity Type": "After School",
                        "Age High": "13", "Program Name": "After School Sports", "Sunday": "", "Age Description": "Youth","Saturday": "", "Gender": "M/F", "Monday": "",
                        "Start Time": "04:30 PM", "Age Low": "8", "Facility Name": "Waterview", "Tuesday": "1", "End Date": "06/25/2016 12:00:00 AM", "Thursday": "", "Friday": ""],
                        ["Facility Web ID": "716", "End Time": "09:00 PM", "Program ID": "5273", "Wednesday": "", "Activity Type": "Games", "Age High": "+",
                         "Program Name": "Card Games", "Sunday": "", "Age Description": "Adult, Senior", "Saturday": "", "Gender": "M/F", "Monday": "1", "Start Time": "06:30 PM",
                         "Age Low": "18", "Facility Name": "Capitolo", "Tuesday": "", "End Date": "12/31/2015 12:00:00 AM", "Thursday": "", "Friday": ""],
                        ["Facility Web ID": "710", "End Time": "08:00 PM", "Program ID": "10387", "Wednesday": "1", "Activity Type": "Football", "Age High": "15",
                         "Program Name": "AAU Semper Fi Bulldgos Football", "Sunday": "", "Age Description": "", "Saturday": "", "Gender": "M/F", "Monday": "1", "Start Time": "06:00 PM",
                         "Age Low": "8", "Facility Name": "Barrett", "Tuesday": "1", "End Date": "01/01/2016 12:00:00 AM", "Thursday": "1", "Friday": "1"],
                        ["Facility Web ID": "731", "End Time": "09:00 PM", "Program ID": "9971", "Wednesday": "1", "Activity Type": "Fitness", "Age High": "",
                         "Program Name": "Fitness & Weights", "Sunday": "", "Age Description": "16+", "Saturday": "", "Gender": "M/F", "Monday": "1", "Start Time": "02:00 PM", "Age Low": "",
                         "Facility Name": "Disston", "Tuesday": "1", "End Date": "12/31/2015 12:00:00 AM", "Thursday": "1", "Friday": "1"], ["Facility Web ID": "847", "End Time": "05:30 PM",
                         "Program ID": "6351", "Wednesday": "", "Activity Type": "Gymnastics / Tumbling", "Age High": "18", "Program Name": "Intermediate Gymnastics", "Sunday": "",
                         "Age Description": "Youth, Teen", "Saturday": "", "Gender": "M/F", "Monday": "", "Start Time": "04:00 PM", "Age Low": "6", "Facility Name": "Water Tower",
                         "Tuesday": "1", "End Date": "12/31/2015 12:00:00 AM", "Thursday": "1", "Friday": ""], ["Facility Web ID": "774", "End Time": "09:00 PM", "Program ID": "10268", "Wednesday": "",
                         "Activity Type": "Dance", "Age High": "14", "Program Name": "Riley Irish Dance", "Sunday": "", "Age Description": "", "Saturday": "", "Gender": "F", "Monday": "",
                         "Start Time": "06:00 PM", "Age Low": "9", "Facility Name": "Lackman", "Tuesday": "1", "End Date": "03/16/2016 12:00:00 AM", "Thursday": "", "Friday": ""],
                        ["Facility Web ID": "787", "End Time": "08:00 PM", "Program ID": "8538", "Wednesday": "", "Activity Type": "Mentoring", "Age High": "",
                         "Program Name": "Non-Contact Boxing", "Sunday": "", "Age Description": "8 to 15", "Saturday": "", "Gender": "M/F", "Monday": "1", "Start Time": "06:00 PM",
                         "Age Low": "", "Facility Name": "Miles Mack", "Tuesday": "", "End Date": "12/29/2015 12:00:00 AM", "Thursday": "", "Friday": ""],
                        ["Facility Web ID": "719", "End Time": "04:00 PM", "Program ID": "1746", "Wednesday": "", "Activity Type": "Drama", "Age High": "18", "Program Name": "Acting",
                         "Sunday": "", "Age Description": "Youth, Teen", "Saturday": "1", "Gender": "M/F", "Monday": "", "Start Time": "01:00 PM", "Age Low": "6", "Facility Name": "Chalfont",
                         "Tuesday": "", "End Date": "03/14/2016 12:00:00 AM", "Thursday": "", "Friday": ""]]
    
    var facilityCoordinates = ["C.B. Moore": ["2551 N 22nd St, Philadelphia, PA 19132", "39.993530", "-75.168030"], "Rivera": ["3201 N 5th St, Philadelphia, PA 19140", "40.000409", "-75.138380"],
                               "Vogt": ["4131 Unruh Ave, Philadelphia, PA 19135", "40.030232", "-75.050508"], "Waterview": ["5826 McMahon St, Philadelphia, PA 19144", "40.045240", "-75.168449"],
                               "Capitolo": ["900 Federal St, Philadelphia, PA 19147", "39.933790", "-75.159799"], "Barrett": ["641 Lindley Ave, Philadelphia, PA 19120", "40.029586", "-75.135956"],
                               "Disston": ["4423 Longshore Ave, Philadelphia, PA 19135", "40.028676", "-75.044570"], "Water Tower": ["209 E Hartwell Ln, Philadelphia, PA 19118", "40.074592", "-75.201270"],
                               "Lackman": ["1101 Bartlett St, Philadelphia, PA 19115", "40.101227", "-75.034482"], "Miles Mack": ["732 N 36th St #66, Philadelphia, PA 19104", "39.967213", "-75.195320"],
                               "Chalfont": ["4300 Deerpath Ln, Philadelphia, PA 19154", "40.080558", "-74.972453"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ActivitiesTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ActivitiesTableViewCell
        
        cell.nameLabel?.text = locations[indexPath.row]["Program Name"]
        cell.locationName = locations[indexPath.row]["Facility Name"]
        cell.activityType = locations[indexPath.row]["Activity Type"]
        cell.startTime = locations[indexPath.row]["Start Time"]
        cell.endTime = locations[indexPath.row]["End Time"]
        
        return cell
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "GoToActivitiesDescription" {
            let nav = segue.destination as! UINavigationController
            let newViewController = nav.topViewController as! ActivitiesDescriptionViewController
            
            if let selectedCell = sender as? ActivitiesTableViewCell
            {
                let activityName = selectedCell.nameLabel.text
                let locationName = selectedCell.locationName
                let activityType = selectedCell.activityType
                let startTime = selectedCell.startTime
                let endTime = selectedCell.endTime
                
                newViewController.activityName = activityName
                newViewController.locationName = locationName
                newViewController.locationAddress = facilityCoordinates[locationName!]?[0]
                newViewController.locationLatitude = Double((facilityCoordinates[locationName!]?[1])!)
                newViewController.locationLongitude = Double((facilityCoordinates[locationName!]?[2])!)
                newViewController.activityType = activityType
                newViewController.startTime = startTime
                newViewController.endTime = endTime
            }
        }
    }
    
    @IBAction func unwindToActivitiesTable(_ sender: UIStoryboardSegue) {
    }


}

