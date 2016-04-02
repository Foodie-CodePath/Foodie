//
//  HomeViewController.swift
//  Foodies
//
//  Created by QingTian Chen on 3/28/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var HomeTableView: UITableView!
    @IBOutlet weak var HomeSearchBar: UISearchBar!
    
    var Restaurants:Restaurant?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeTableView.dataSource = self
        HomeTableView.delegate = self
        // Do any additional setup after loading the view.
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

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = HomeTableView.dequeueReusableCellWithIdentifier("HomeTableCell", forIndexPath: indexPath) as! HomeTableViewCell
    
        cell.testLabel.text = "testing"
        
        return cell
    }
    
}
