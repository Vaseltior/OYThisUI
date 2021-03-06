//
//  ViewController.swift
//  Example
//
//  Created by Samuel Grau on 15/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import UIKit
import OYThisUI

class ViewController: UIViewController {
  lazy var testView: OYTDateStackView = {
    let v = OYTDateStackView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    v.textColor = UIColor.whiteColor()
    v.backgroundColor = UIColor.midnightBlueColor()
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.blueColor()
    self.view.addSubview(self.testView)
    self.testView.date = NSDate()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    self.testView.frame = self.view.bounds
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    let manager = OYTProgressViewManager.sharedInstance
    manager.height = 2.0
    manager.showProgressView(self.view)
    
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0), { () -> Void in
      // wait 10s then ask on the main thread to hide the progress view
      gcdDelay(10) {
        gcdMainThread {
          manager.hideProgressView()
        }
      }
      
    })
    
  }
}
