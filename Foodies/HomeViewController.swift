//
//  HomeViewController.swift
//  Foodies
//
//  Created by QingTian Chen on 3/28/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

// Show all restaruant using Foursquare/Yelp API
import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var HomeSearchBar: UISearchBar!
    
    
    var Restaurants:Restaurant?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
