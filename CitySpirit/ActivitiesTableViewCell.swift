//
//  ActivitiesTableViewCell.swift
//  CitySpirit
//
//  Created by Daniel Barychev on 1/21/17.
//  Copyright © 2017 Daniel Barychev. All rights reserved.
//

import UIKit

class ActivitiesTableViewCell: UITableViewCell {

    // MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    var locationName: String?
    var activityType: String?
    var startTime: String?
    var endTime: String?
}
