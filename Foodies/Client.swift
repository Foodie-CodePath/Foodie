//
//  Client.swift
//  Foodies
//
//  Created by QingTian Chen on 3/25/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit
import Parse

class Client: NSObject {
    
    //fetch restaurant data
    //@param limit The numbers of restaurant you want to fetch
    //@param orderby How you want the restaurant to be sorted
    //@param success What you do after data was fetched successfully
    //@param failure What you do after data was NOT fetched successfully
    class func requestRestaurants(limit: Int, orderBy: String, success: ([PFObject])->(), failure: (NSError)->()) {
        let query = PFQuery(className: "Restaurant")
        query.orderByDescending("createdAt")
        query.includeKey("author")
        query.limit = limit
        
        query.findObjectsInBackgroundWithBlock { (restaurants: [PFObject]?, error: NSError?) -> Void in
            if let restaurants = restaurants {
                // do something with the data fetched
                success(restaurants)
            } else {
                // handle error
                failure(error!)
            }
        }
    }
    
    

}
