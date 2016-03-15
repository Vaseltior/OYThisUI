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
 A manager for the progress view `OYTProgressView`
 */
public class OYTProgressViewManager {
  
  // MARK: - Enums
  
  /**
  Positions of the progress view on screen
  
  - Top:    progressview will be placed on top of the view
  - Bottom: progressview will be placed on the bottom of the view
  */
  public enum Position {
    case Top
    case Bottom
  }
  
  // MARK: - Properties
  
  /// Maintains the position state of the handle progress view
  public var position: OYTProgressViewManager.Position = OYTProgressViewManager.Position.Top
  public var leftToRight: Bool = true
  public var animationDuration: CFTimeInterval = 1.25
  
  /// The color of the progress view
  public var color: UIColor = UIColor.pomegranateColor() {
    didSet {
      // Automatic update of the color of the progressView
      self.progressView.backgroundColor = self.color
    }
  }
  
  /// The wanted height of the progressview
  public var height: CGFloat = 2.0
  
  /// The managed progress view
  private var progressView: OYTProgressView = OYTProgressView()
  
  // MARK: - Singleton pattern
  
  /// The shared instance of the progress view manager
  public static let sharedInstance = OYTProgressViewManager()
  private init() {
    self.color = UIColor.pomegranateColor()
  } // Ensures that this init won't be called from outside
  
  // MARK: - Showing/Hiding
  
  /**
  Shows the progress view on the given view. If no view is given,
  will try to put the view in the current window
  
  - parameter view: The view in which the progress view should be added
  */
  public func showProgressView(view: UIView? = nil) {
    // Starting with a full tranparency
    self.progressView.alpha = 0.0
    // configure the animation of the progress view before showing it
    self.progressView.initializeAnimation(self.leftToRight, animationDuration: self.animationDuration)
    // If the view is given, we add it otherwise (making the not so risky assumption that the window exists)
    // we add the progressview to the window
    let destinationView = view ?? UIApplication.sharedApplication().keyWindow!
    destinationView.addSubview(self.progressView)
    
    // Animating appearance
    UIView.animateWithDuration(0.25, animations: { () -> Void in
      // Increasing the alpha of the progress view to make appearing smooth
      self.progressView.alpha = 1.0
      
      }) { (finished: Bool) -> Void in
    }
  }
  
  /**
   Hides the managed progress view
   */
  public func hideProgressView() {
    
    UIView.animateWithDuration(0.25, animations: { () -> Void in
      // Reducing the alpha of the progress view to make disappearing smooth
      self.progressView.alpha = 0.0
      
      }) { (finished: Bool) -> Void in
        // Alpha now set to 0, removing the view from its parent view
        self.progressView.removeFromSuperview()
    }
  }
}
