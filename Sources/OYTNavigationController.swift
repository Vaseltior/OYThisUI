/*
Copyright 2011-present Samuel GRAU

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/


import UIKit

/**
 This is a UINavigation controller that behave considering the presented view controller
 or the top most view controller
 */
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
