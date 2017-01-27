//
//  HealthTableViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit

class HealthTableViewController: UITableViewController {


    let locations = [
                     ["Y": "40.03450819", "NAME": "Covenant House Health Services", "FULL_ADDRESS":"251 East Bringhurst Street", "X": "-75.164721", "PHONE": "215-844-0181", "ZIP": "19144", "WEBSITE": "http://covenanthousehealth.org/", "DENTAL_PHONE": "N/A","ORGANIZATION": "Covenant", "OBJECTID": "1"],
                     ["Y": "40.06738293", "NAME": "Mt. Pleasant Medical Center", "FULL_ADDRESS": "8125 Stenton Avenue", "X": "-75.17898121", "PHONE": "215-248-7560", "ZIP": "19150",
                      "WEBSITE": "http://covenanthousehealth.org/", "DENTAL_PHONE": "N/A", "ORGANIZATION": "Covenant", "OBJECTID": "2"],
                     ["Y": "39.9670259", "NAME": "Fairmount Primary Care Center", "FULL_ADDRESS": "1412 Fairmount Avenue",
                      "X": "-75.16141104", "PHONE": "215-235-9600", "ZIP": "19130", "WEBSITE": "http://www.dvch.org/dvch/Locations/FairmountPrimaryCareCenter/tabid/100/language/en-US/Default.aspx", "DENTAL_PHONE": "215-235-9600", "ORGANIZATION": "DVCH", "OBJECTID": "3"],
                     ["Y": "39.95306356", "NAME": "Fairmount Primary Care Center at Horizon House", "FULL_ADDRESS": "120 S. 30th Street", "X": "-75.18387328", "PHONE": "215-222-2466", "ZIP": "19104", "WEBSITE": "http://www.dvch.org/dvch/Locations/FairmountPrimaryCareCenteratHorizonHouse/tabid/101/language/en-US/Default.aspx", "DENTAL_PHONE": "N/A", "ORGANIZATION": "DVCH", "OBJECTID": "4"],
                     ["Y": "39.97183994", "NAME": "Fairmount Primary Care Center at St. Joseph's Hospital", "FULL_ADDRESS": "1600 W. Girard Avenue", "X": "-75.16276472", "PHONE": "215-827-8010", "ZIP": "19130", "WEBSITE": "http://www.dvch.org/dvch/Locations/FairmountPrimaryCareCenteratStJosephs/tabid/134/language/en-US/Default.aspx","DENTAL_PHONE": "N/A", "ORGANIZATION": "DVCH", "OBJECTID": "5"],
                     ["Y": "39.99954343", "NAME": "Maria de los Santos Health Center", "FULL_ADDRESS": "401-455 WestAllegheny Ave", "X": "-75.13645849", "PHONE": "215-291-2500", "ZIP": "19133", "WEBSITE": "http://www.dvch.org/dvch/Locations/MariadelosSantosHealthCenter/tabid/102/language/en-US/Default.aspx", "DENTAL_PHONE": "215-291-2500", "ORGANIZATION": "DVCH", "OBJECTID": "6"],
                     ["Y": "40.01193495", "NAME": "Parkview OB/Gyn & Podiatry Services", "FULL_ADDRESS": "841 E. Hunting Park Avenue Suite 201", "X": "-75.1104123", "PHONE": "215-537-7695", "ZIP": "19124", "WEBSITE": "http://dvch.org/dvch/Locations/ParkviewHealthCenter/tabid/104/language/en-US/Default.aspx", "DENTAL_PHONE": "N/A", "ORGANIZATION": "DVCH", "OBJECTID": "7"],
                     ["Y": "39.99603493", "NAME": "Esperanza Health Center - main (Kensington Avenue)", "FULL_ADDRESS": "3156 Kensington Ave ", "X": "-75.11434293", "PHONE": "215-831-1100", "ZIP": "19134", "WEBSITE": "http://www.esperanzahealthcenter.org/", "DENTAL_PHONE": "215-831-1100", "ORGANIZATION": "Esperanza", "OBJECTID": "8"],
                     ["Y": "39.98886147", "NAME": "Esperanza Health Center  (Fifth Street)", "FULL_ADDRESS": "2490 North 5th Street ", "X": "-75.14097061", "PHONE": "215-221-6633", "ZIP": "19133", "WEBSITE": "http://www.esperanzahealthcenter.org/", "DENTAL_PHONE": "N/A", "ORGANIZATION": "Esperanza", "OBJECTID": "9"],
                     ["Y": "40.01910718", "NAME": "Hunting Park", "FULL_ADDRESS": "4417 N. 6th Street", "X": "-75.13685965", "PHONE": "215-302-3600", "ZIP": "19140", "WEBSITE": "http://www.esperanzahealthcenter.org/", "DENTAL_PHONE": "N/A", "ORGANIZATION": "Esperanza", "OBJECTID": "10"],
                     ["Y": "39.92914614", "NAME": "The Health Annex", "FULL_ADDRESS": "6120 Woodland Avenue ", "X":"-75.2291484", "PHONE": "215-727-4721", "ZIP": "19143", "WEBSITE": "http://www.fpcn.com/", "DENTAL_PHONE": "215-727-4721", "ORGANIZATION": "FPCN", "OBJECTID": "11"],
                     ["Y": "39.96797689", "NAME": "Eleventh Street Health Services of Drexel University", "FULL_ADDRESS": "850 North 11th Street", "X": "-75.15481743", "PHONE": "215-769-1100", "ZIP": "19123", "WEBSITE": "http://www.fpcn.com/", "DENTAL_PHONE": "215-769-1100", "ORGANIZATION": "FPCN", "OBJECTID": "12"],
                     ["Y": "40.01683487", "NAME": "Abbotsford Falls  Family Practice and Counseling", "FULL_ADDRESS":"4700 Wissahickon Ave Building D, Suite 119", "X": "-75.17151191", "PHONE": "215-843-9720", "ZIP": "19144", "WEBSITE": "http://www.fpcn.com/", "DENTAL_PHONE": "N/A", "ORGANIZATION": "FPCN", "OBJECTID": "13"],
                     ["Y": "39.9394343", "NAME": "Woodland Avenue Medical Center", "FULL_ADDRESS": "5000 Woodland Avenue", "X": "-75.21451422", "PHONE": "215-726-9807", "ZIP": "19143", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "215-726-9807", "ORGANIZATION": "GPHA","OBJECTID": "14"],
                     ["Y": "39.93591677", "NAME": "Southeast Health Center", "FULL_ADDRESS": "800 Washington Avenue ", "X": "-75.15715834", "PHONE": "215-339-5100", "ZIP": "19147", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "215-339-5100", "ORGANIZATION": "GPHA", "OBJECTID": "15"],
                     ["Y": "39.92670972", "NAME": "Wilson Park Medical Center", "FULL_ADDRESS": "2520 Snyder Avenue","X": "-75.18823365", "PHONE": "215-755-7700", "ZIP": "19145", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "215-755-6866", "ORGANIZATION":"GPHA", "OBJECTID": "16"],
                     ["Y": "39.93654604", "NAME": "Chinatown Medical Services", "FULL_ADDRESS": "930 Washington Avenue", "X": "-75.15947687", "PHONE": "215-627-8000", "ZIP": "19140", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "N/A", "ORGANIZATION": "GPHA", "OBJECTID": "17"],
                     ["Y": "39.93060904", "NAME": "4th Street Medical Suite", "FULL_ADDRESS": "1401 South 4th Street", "X": "-75.15158332", "PHONE": "215-339-1079", "ZIP": "19147", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "N/A", "ORGANIZATION": "GPHA", "OBJECTID": "18"],
                     ["Y": "40.01422279", "NAME": "Frankford Avenue Health Center", "FULL_ADDRESS": "4510 Frankford Avenue", "X": "-75.0861356", "PHONE": "215-744-1302", "ZIP": "19124", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "215-535-1990", "ORGANIZATION": "GPHA", "OBJECTID": "19"],
                     ["Y": "39.93531828", "NAME": "Greater Philadelphia Health Action, Inc. Dental and Behavorial Healthcare", "FULL_ADDRESS": "5501 Woodland Avenue", "X": "-75.22060564", "PHONE": "215-724-4700", "ZIP": "19143", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "215-724-4700", "ORGANIZATION": "GPHA", "OBJECTID": "20"],
                     ["Y": "39.92280372", "NAME": "Snyder Avenue Dental Center", "FULL_ADDRESS":"640 Snyder Avenue", "X": "-75.15790992", "PHONE": "215-334-4900", "ZIP": "19148", "WEBSITE": "http://www.gphainc.org/sitesMap.asp", "DENTAL_PHONE": "215-334-4900", "ORGANIZATION": "GPHA", "OBJECTID": "21"],
    ]
    

        
    
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
        let cellIdentifier = "HealthTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! HealthTableViewCell
        
        cell.nameLabel?.text = locations[indexPath.row]["NAME"]
        cell.locationLatitude = Double(locations[indexPath.row]["Y"]!)
        cell.locationLongitude = Double(locations[indexPath.row]["X"]!)
        cell.locationAddress = locations[indexPath.row]["FULL_ADDRESS"]!
        cell.locationPhoneNumber = locations[indexPath.row]["PHONE"]!
        
        return cell
    }
    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "GoToHealthDescription" {
            let nav = segue.destination as! UINavigationController
            let newViewController = nav.topViewController as! HealthDescriptionViewController
            
            if let selectedCell = sender as? HealthTableViewCell
            {
                let opportunityName = selectedCell.nameLabel.text
                let latitude = selectedCell.locationLatitude
                let longitude = selectedCell.locationLongitude
                let address = selectedCell.locationAddress
                let phoneNumber = selectedCell.locationPhoneNumber
                
                newViewController.name = opportunityName
                newViewController.latitude = latitude
                newViewController.longitude = longitude
                newViewController.address = address
                newViewController.phoneNumber = phoneNumber
            }
        }
    }
    
    @IBAction func unwindToHealthTable(_ sender: UIStoryboardSegue) {
    }

}
