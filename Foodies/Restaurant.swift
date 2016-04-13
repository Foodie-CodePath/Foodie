//
//  Restaurant.swift
//  Foodies
//
//  Created by dong liang on 4/2/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit
import Parse

class Restaurant: NSObject {
    
    let name: String?
    let address: String?
    let categories: String?
    let idNumber: Int?
    let latitude: Double?
    let longitude: Double?
    let imageURL: NSURL?
    
    //constructor, it takes a PFObjects as parameter and initilize restaurant object
    init(restaurantObject: PFObject) {
        name = restaurantObject["name"] as? String
        address = restaurantObject["address"] as? String
        categories = restaurantObject["categories"] as? String
        idNumber = restaurantObject["idNumber"] as? Int
        latitude = restaurantObject["latitude"] as? Double
        longitude = restaurantObject["longtitude"] as? Double
        //convert String to NSURL
        let imageURLString = restaurantObject["imageURL"] as? String
        if imageURLString != nil {
            imageURL = NSURL(string: imageURLString!)!
        } else {
            imageURL = nil
        }
    }
    
    //input a list of Restaurant PFObjects, return a list of Swift Restaurant objects
    class func RestaurantsWithArray(restaurants: [PFObject]) -> [Restaurant] {
        var restaurantsToreturn = [Restaurant]()
        for each in restaurants {
            let restaurant = Restaurant(restaurantObject: each)
            restaurantsToreturn.append(restaurant)
        }
        return restaurantsToreturn
    }
    
}
