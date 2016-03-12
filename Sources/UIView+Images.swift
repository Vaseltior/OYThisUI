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

/** Making UIView convertible to UIImage */
extension UIView {
  /**
   Get the image from the view
   
   - parameter view: the view to screen shot
   
   - returns: the screen shot of the view
   */
  public static func oytImageFromView(view: UIView) -> UIImage {
    let scale = UIScreen.mainScreen().scale
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, scale)
    view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
  
  /**
   Get the image from the view
   
   - parameter view: the view to screen shot
   
   - returns: the screen shot of the view
   */
  public func oytToImage() -> UIImage {
    return UIView.oytImageFromView(self)
  }
}
