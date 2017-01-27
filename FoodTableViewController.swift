//
//  FoodViewController.swift
//  CitySpirit
//
//  Created by Jordan Reichgut on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    let locations = [["STORE_ADDRESS": "1022 N Marshall St", "CDC_STORE_LEVEL": "3", "OBJECTID": "1", "OFFICIAL_STORE_NAME": "1022 Marshall Enterprises, Inc", "Y": "39.96862815",
                      "ZIP": "19123", "X": "-75.14773604", "CATEGORY": "Certification"], ["STORE_ADDRESS": "2654 S 10th St", "CDC_STORE_LEVEL": "1", "OBJECTID": "2",
                      "OFFICIAL_STORE_NAME": "10th Ave Sandwiches", "Y": "39.91652729", "ZIP": "19148", "X": "-75.16445354", "CATEGORY": "Basic"], ["STORE_ADDRESS": "5570 Rising Sun Ave",
                      "CDC_STORE_LEVEL": "1", "OBJECTID": "3", "OFFICIAL_STORE_NAME": "1111 M&S Gas, Inc.", "Y":"40.03418656", "ZIP": "19120", "X": "-75.11520785", "CATEGORY": "Basic"],
                     ["STORE_ADDRESS": "453 N 12th St", "CDC_STORE_LEVEL": "3", "OBJECTID": "4", "OFFICIAL_STORE_NAME": "12th Street Food Mart", "Y": "39.9605678", "ZIP": "19123",
                      "X": "-75.1579461", "CATEGORY": "Certification"],["STORE_ADDRESS": "1551 Mckean St", "CDC_STORE_LEVEL": "2", "OBJECTID": "5",
                      "OFFICIAL_STORE_NAME": "16th Street Food Market", "Y": "39.92602482", "ZIP": "19145", "X": "-75.17225389", "CATEGORY": "Basic"], ["STORE_ADDRESS": "1111 S 6th St",
                      "CDC_STORE_LEVEL": "1", "OBJECTID": "6", "OFFICIAL_STORE_NAME": "1st Oriental Supermarket", "Y": "39.93495014", "ZIP": "19147", "X": "-75.15385413", "CATEGORY": "Basic"],
                     ["STORE_ADDRESS": "2050 Dickinson St", "CDC_STORE_LEVEL": "2", "OBJECTID": "7", "OFFICIAL_STORE_NAME": "21st Food Market & Deli", "Y": "39.93310023", "ZIP": "19146", "X":
                        "-75.17916676", "CATEGORY": "Basic"], ["STORE_ADDRESS": "2201 W Oxford St", "CDC_STORE_LEVEL": "3", "OBJECTID": "8", "OFFICIAL_STORE_NAME": "22nd St. Mini Market", "Y":
                        "39.97901731", "ZIP": "19121", "X": "-75.1712562", "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "3101 N 26th St", "CDC_STORE_LEVEL": "3", "OBJECTID": "9", "OFFICIAL_STORE_NAME": "26th and Clearfield Mini Mart", "Y": "40.00257041", "ZIP": "19132",
                      "X": "-75.17256397", "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "1800 N 26Th St", "CDC_STORE_LEVEL": "3", "OBJECTID": "10", "OFFICIAL_STORE_NAME": "26th Food Market", "Y": "39.98276108", "ZIP": "19121",
                      "X": "-75.17698617", "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "2764-72 Kensington Ave", "CDC_STORE_LEVEL": "2", "OBJECTID": "11", "OFFICIAL_STORE_NAME": "2764 Kensington Inc", "Y": "39.99105071",
                      "ZIP": "19134", "X": "-75.12341183", "CATEGORY": "Basic"],
                     ["STORE_ADDRESS": "2655 W Sterner St", "CDC_STORE_LEVEL": "1", "OBJECTID": "12", "OFFICIAL_STORE_NAME": "27th Food Market", "Y": "39.99709292", "ZIP": "19132", "X": "-75.17470418", "CATEGORY": "Basic"],
                     ["STORE_ADDRESS": "2800 Snyder Ave", "CDC_STORE_LEVEL": "2", "OBJECTID": "13", "OFFICIAL_STORE_NAME": "28 & Snyder Supermarket", "Y": "39.9272986", "ZIP": "19145", "X": "-75.19262674", "CATEGORY": "Basic"],
                     ["STORE_ADDRESS": "1009 Spring Garden St", "CDC_STORE_LEVEL": "3", "OBJECTID": "14", "OFFICIAL_STORE_NAME": "3 Espigas Bakery & Grocery", "Y": "39.96177756",
                      "ZIP": "19123", "X": "-75.15468471", "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "3324 N 21stSt", "CDC_STORE_LEVEL": "3", "OBJECTID": "15", "OFFICIAL_STORE_NAME": "3 J FoodMarket", "Y": "40.00539245", "ZIP": "19140",
                      "X": "-75.16385115", "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "5356 Delancey Street", "CDC_STORE_LEVEL": "3", "OBJECTID": "16", "OFFICIAL_STORE_NAME": "3 Sisters #2", "Y": "39.95439293", "ZIP": "19143",
                      "X": "-75.2291298", "CATEGORY": "Certification"],
                     ["STORE_ADDRESS": "1327 W Wishart St", "CDC_STORE_LEVEL": "3", "OBJECTID": "17", "OFFICIAL_STORE_NAME": "3 Torres", "Y": "40.00080582", "ZIP": "19132", "X": "-75.15109864",
                      "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "623 Fairmount Ave", "CDC_STORE_LEVEL": "3", "OBJECTID": "18", "OFFICIAL_STORE_NAME": "3MNS Inc.", "Y": "39.96383632", "ZIP": "19123", "X": "-75.14863822",
                      "CATEGORY": "Enhanced"],
                     ["STORE_ADDRESS": "1701 S 58th St", "CDC_STORE_LEVEL": "2", "OBJECTID": "19", "OFFICIAL_STORE_NAME": "4 Brothers Mini Market", "Y": "39.93795785", "ZIP": "19143",
                      "X": "-75.23106492", "CATEGORY": "Basic"]]
    
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
        let cellIdentifier = "FoodTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FoodTableViewCell
        
        cell.nameLabel?.text = locations[indexPath.row]["OFFICIAL_STORE_NAME"]
        cell.locationAddress = locations[indexPath.row]["STORE_ADDRESS"]
        cell.locationLatitude = Double(locations[indexPath.row]["Y"]!)
        cell.locationLongitude = Double(locations[indexPath.row]["X"]!)
        
        return cell
    }
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "GoToFoodDescription" {
            let nav = segue.destination as! UINavigationController
            let newViewController = nav.topViewController as! FoodDescriptionViewController
            
            if let selectedCell = sender as? FoodTableViewCell
            {
                let opportunityName = selectedCell.nameLabel.text
                let address = selectedCell.locationAddress
                let latitude = selectedCell.locationLatitude
                let longitude = selectedCell.locationLongitude
                
                newViewController.name = opportunityName
                newViewController.address = address
                newViewController.latitude = latitude
                newViewController.longitude = longitude
            }
        }
    }
 
    
    @IBAction func unwindToFoodTable(_ sender: UIStoryboardSegue) {
    }

}
