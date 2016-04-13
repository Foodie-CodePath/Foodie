//
//  HomeViewController.swift
//  Foodies
//
//  Created by QingTian Chen on 3/28/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

// Show all restaruant using Foursquare/Yelp API
import UIKit
import Parse

class HomeViewController: UIViewController {

    @IBOutlet weak var HomeSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let newUser = PFUser()
//        newUser.username = "dong"
//        newUser.password = "123"
//        
//        newUser.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
//            if success {
//                print("successfully signed up")
//
//            } else {
//                print("fail to signed up")
//                print(error?.localizedDescription)
//            }
//        }
        
        
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
