//
//  ContainerViewController.swift
//  Foodies
//
//  Created by dong liang on 4/2/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    var pageViewController: UIPageViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("HomePageViewController") as! UIPageViewController
        pageViewController.dataSource = self
        let initialContentviewcontroller = self.storyboard?.instantiateViewControllerWithIdentifier("SubViewController") as! SubViewController
        let viewControllers: [UIViewController] = [initialContentviewcontroller]
        pageViewController.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
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

extension ContainerViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let viewController = viewController as! SubViewController
        
        var index = viewController.itemIndex as Int
        
        index += 1
        
        if index >= 3 {
            index = 0
        }
        let a = self.storyboard?.instantiateViewControllerWithIdentifier("SubViewController") as! SubViewController
        
        a.itemIndex = index
        return a
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let viewController = viewController as! SubViewController
        
        var index = viewController.itemIndex as Int
        
        index -= 1
        
        if index < 0 {
            index = 2
        }
        let a = self.storyboard?.instantiateViewControllerWithIdentifier("SubViewController") as! SubViewController
        
        a.itemIndex = index
        return a
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 3
    }
    
}