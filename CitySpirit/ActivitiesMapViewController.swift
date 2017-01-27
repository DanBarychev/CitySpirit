//
//  ActivitiesMapViewController.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit
import GoogleMaps

class ActivitiesMapViewController: UIViewController {

    let lat = 39.9526
    let long = -75.1652
    
    var locationName: String?
    var activityName: String?
    var locationAddress: String?
    var locationLatitude: Double?
    var locationLongitude: Double?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDataOnMap()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setDataOnMap() {
        
        let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: long, zoom: 10)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.mapType = kGMSTypeNormal
        self.view = mapView
        
        let newMarker = GMSMarker(position: CLLocationCoordinate2DMake(locationLatitude!, locationLongitude!))
        newMarker.icon = GMSMarker.markerImage(with: UIColor.red)
        newMarker.title = activityName
        newMarker.snippet = locationAddress
        newMarker.map = mapView
        
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
