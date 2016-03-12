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

extension UILabel {
  /**
   Returns the size given a size
   
   - parameter size: The given size
   
   - returns: The resulting size
   */
  public func oytSizeWithSize(size: CGSize) -> CGSize {
    // If no text and no font, size would be (0,0)
    guard let text = self.text, font = self.font else { return CGSize(width: 0, height: 0) }
    
    let computedSize = text.boundingRectWithSize(
      size,
      options: NSStringDrawingOptions.UsesLineFragmentOrigin,
      attributes: [NSFontAttributeName: font],
      context: nil
      ).size
    return CGSizeMake(computedSize.width + 1.0, computedSize.height + 1.0)
  }
  
  /**
   Return the size occupied by the label in the given view
   
   - parameter view: the view that is the constraint
   
   - returns: The resulting size of the label
   */
  public func oytSizeWithView(view: UIView) -> CGSize {
    return self.oytSizeWithSize(
      CGSize(
        width: CGRectGetWidth(view.bounds),
        height: CGFloat.max)
    )
  }
}
