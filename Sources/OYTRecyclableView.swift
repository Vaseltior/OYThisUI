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

import Foundation
import UIKit

/**
 A simple view implementation of the AVRecyclableView protocol.
 
 This view class can easily be used with a AVViewRecycler.
 */
public class OYTRecyclableView: OYTView, OYTRecyclable {
  /**
   This view's reuse identifier. 
   Used by AVViewRecycler to pool this view into a group of similar recycled views.
   */
  public var oytReuseIdentifier: String? = nil
  
  /**
   Initializes a newly allocated view with the given reuse identifier.
   This is the designated initializer.
   
   - parameter reuseIdentifier: The identifier that will be used to group this view in the view recycler.
   
   - returns: An instance of a recyclable view
   */
  public convenience init(reuseIdentifier: String) {
    self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    self.oytReuseIdentifier = reuseIdentifier
  }
  
  /// Called immediately after the view has been dequeued from the recycled view pool.
  public func oytPrepareForReuse() {}
}
