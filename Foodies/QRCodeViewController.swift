//
//  QRCodeViewController.swift
//  Foodies
//
//  Created by QingTian Chen on 3/30/16.
//  Copyright © 2016 QingTian Chen. All rights reserved.
//

import UIKit
import QRCode

class QRCodeViewController: UIViewController {
    @IBOutlet weak var qrCodeImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qrCodeImageView.image = {
            var qrCode = QRCode("http://schuch.me")
            qrCode!.size = CGSize(width: 300, height: 300)
            qrCode!.color = CIColor(rgba: "16a085")
            qrCode!.backgroundColor = CIColor(rgba: "000")
            return qrCode?.image
            }()
        
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
