//
//  OYTNavigationController.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import UIKit

public class OYTNavigationController: UINavigationController {
  /**
   Returns all of the interface orientations that the view controller supports.
   A bit mask specifying which orientations are supported.
   See `UIInterfaceOrientationMask` for valid bit-mask values. The value returned by this method must not be `0`.
   
   - returns: A bit mask specifying which orientations are supported.
   */
  override public func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    if let presentedViewController = self.presentedViewController {
      return presentedViewController.supportedInterfaceOrientations()
    }
    guard let tvc = self.topViewController else {
      return UIInterfaceOrientationMask.All
    }
    return tvc.supportedInterfaceOrientations()
  }
  
  /**
   The preferred status bar style for the view controller.
   A UIStatusBarStyle key indicating your preferred status bar style for the view controller.
   
   - returns: A UIStatusBarStyle key indicating your preferred status bar style for the view controller.
   */
  public override func preferredStatusBarStyle() -> UIStatusBarStyle {
    if let presentedViewController = self.presentedViewController {
      return presentedViewController.preferredStatusBarStyle()
    }
    guard let tvc = self.topViewController else {
      return UIStatusBarStyle.Default
    }
    return tvc.preferredStatusBarStyle()
  }
}
