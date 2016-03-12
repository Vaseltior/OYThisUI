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
 A class that inherits from UITableViewCell but who aims at giving
 one central common initialization methods for all initialization
 calls
 */
public class OYTTableViewCell: UITableViewCell {
  // MARK: - Overrides
  
  /**
  Initializes and returns a newly allocated view object with the specified frame rectangle.
  An initialized view object or `nil` if the object couldn't be created.
  
  - parameter frame: The frame rectangle for the view, measured in points.
  The origin of the frame is relative to the superview in which you plan to add it.
  This method uses the frame rectangle to set the center and bounds properties accordingly.
  
  - returns: An initialized view object or nil if the object couldn't be created.
  */
  public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.commonInitialization()
  }
  
  /**
   Returns an object initialized from data in a given unarchiver.
   `self`, initialized using the data in `decoder`.
   
   - parameter aDecoder: An unarchiver object.
   
   - returns: `self`, initialized using the data in decoder.
   */
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.commonInitialization()
  }
  
  // MARK: - Public functions
  
  /**
  This function is called by the init(frame) and the init(coder) methods, so that there is no need
  to implement further methods in the subclasses.
  */
  public func commonInitialization() {
    // Do some initialization here, or override
  }
}
