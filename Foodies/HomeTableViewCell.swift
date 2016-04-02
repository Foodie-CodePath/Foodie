//
//  HomeTableViewCell.swift
//  Foodies
//
//  Created by dong liang on 4/2/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var RestaurantProfileImage: UIImageView!
    @IBOutlet weak var RestaurantName: UILabel!
    @IBOutlet weak var RestaurantAddress: UILabel!
    
    var restaurant: [Restaurant]?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        RestaurantProfileImage.image = UIImage(named: "hippo")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
