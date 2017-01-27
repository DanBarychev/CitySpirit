//
//  FoodTableViewCell.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    // MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    var locationAddress: String?
    var locationLatitude: Double?
    var locationLongitude: Double?
    
}
