//
//  SubViewController.swift
//  Foodies
//
//  Created by dong liang on 4/2/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var HomeTableView: UITableView!
    
    var itemIndex: Int = 0
    var restaurants: [Restaurant]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeTableView.delegate = self
        HomeTableView.dataSource = self
        
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


extension SubViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = HomeTableView.dequeueReusableCellWithIdentifier("SubViewCell", forIndexPath: indexPath) as! HomeTableViewCell
        cell.RestaurantName.text = "Red Lobster \(indexPath.row)"
        
        return cell
        
    }
}