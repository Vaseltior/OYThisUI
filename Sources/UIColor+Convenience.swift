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


extension UIColor {
  /**
   Give this function the hexadecimal value of the color you want to create
   
   - parameter rgbValue: the rgbValue, for example : 0xFFFFFF or 0xFF2300
   
   - returns: Returns the corresponding color
   */
  public static func colorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
      red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
      alpha: CGFloat(1.0)
    )
  }
  
  /**
   A convenience initializer function for RGB values between 0...255
   
   - parameter r: red value [0..255]
   - parameter g: green value [0..255]
   - parameter b: blue value [0..255]
   
   - returns: An instance of `UIColor`
   */
  public convenience init(r: Int, g: Int, b: Int) {
    self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
  }
  
}
