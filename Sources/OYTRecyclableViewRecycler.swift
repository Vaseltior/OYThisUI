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
 An object for efficiently reusing views by recycling and dequeuing
 them from a pool of views.
 
 This sort of object is what UITableView and AVPagingScrollView
 use to recycle their views.
 */
public class OYTRecyclableViewRecycler {
  public var reuseIdentifiersToRecycledViews: [String: [UIView]] = [String: [UIView]]()
  
  /**
   Dequeues a reusable view from the recycled views pool if one exists, otherwise returns nil.
   
   - parameter reuseIdentifier: Often the name of the class of view you wish to fetch.
   
   - returns: the reusable view if a view is found with the given identifier, otherwise `nil`
   */
  public func dequeueReusableViewWithIdentifier(reuseIdentifier: String) -> UIView? {
    guard var views: [UIView] = self.reuseIdentifiersToRecycledViews[reuseIdentifier] else { return nil }
    guard let view = views.last else { return nil }
    
    views.removeLast()
    if let v = view as? OYTRecyclable {
      v.prepareForReuse()
    }
    return view
  }
  
  /**
   Adds a given view to the recycled views pool.
   
   - parameter view: The view to recycle. The reuse identifier will be retrieved from the view via the OVTRecyclable protocol
   */
  public func recycleView(view: UIView) {
    view.removeFromSuperview()
    var reuseIdentifier: String? = nil
    if let v = view as? OYTRecyclable {
      reuseIdentifier = v.reuseIdentifier
    }
    if reuseIdentifier == nil {
      reuseIdentifier = NSStringFromClass(view.dynamicType)
    }
    
    if var views: [UIView] = self.reuseIdentifiersToRecycledViews[reuseIdentifier!] {
      views.append(view)
      
    } else {
      let views: [UIView] = [UIView](arrayLiteral: view)
      self.reuseIdentifiersToRecycledViews[reuseIdentifier!] = views
    }
  }
  
  /**
   Removes all of the views from the recycled views pool.
   */
  public func reduceMemoryUsage() {
    self.removeAllViews()
  }
  
  // MARK: - Private
  
  /**
  Removes all the views in the recycler
  */
  private func removeAllViews() {
    self.reuseIdentifiersToRecycledViews.removeAll(keepCapacity: false)
  }
}
