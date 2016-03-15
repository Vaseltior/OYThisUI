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
import QuartzCore

/**
 A progress view that reflects a loading on the screen
 */
public class OYTProgressView: OYTView {
  public var viewHeight: CGFloat = 4.0
  
  /**
   This function is called by the init(frame) and the init(coder) methods, 
   so that there is no need to implement further methods in the subclasses.
   */
  public override func commonInitialization() {
    super.commonInitialization()
  }
  
  /**
   Tells the view that its superview is about to change to the specified superview.
   
   - parameter newSuperview: A view object that will be the new superview of the receiver. 
   This object may be nil.
   */
  public override func willMoveToSuperview(newSuperview: UIView?) {
    super.willMoveToSuperview(newSuperview)
    
    // Ok, the view is about to be added/removed from the superview
    if let superView = newSuperview {
      // We should compute the new frame
      let f = superView.frame
      var newFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
      
      // Compute a different frame for the view depending on the selected position
      switch OYTProgressViewManager.sharedInstance.position {
        
      case .Top:
        newFrame = CGRect(
          x: 0,
          y: 0,
          width: f.size.width,
          height: self.viewHeight
        )
        
      case .Bottom:
        newFrame = CGRect(
          x: 0,
          y: f.size.height-self.viewHeight,
          width: f.size.width,
          height: self.viewHeight
        )
      }
      
      self.frame = newFrame
      
    }
    // View is removed from its parent view there is no real else
  }
  
  /**
   Starts the animation
   
   - parameter leftToRight: should the animation go from left to right or right to left
   - parameter duration:    the duration of the animation
   
   */
  public func initializeAnimation(leftToRight: Bool, animationDuration duration: CFTimeInterval) {
    // We remove any existing animation, because we don't want the animations
    // to be cumulated.
    self.layer.removeAllAnimations()
    
    self.layer.addAnimation(
      self.progressAnimation(leftToRight, animationDuration: duration),
      forKey: "OYTProgressViewAnimation" // <- Prety sure there won't be collision with another animation
    )
  }
  
  /**
   Build the animation
   
   - parameter leftToRight: should the animation go from left to right or right to left
   - parameter duration:    the duration of the animation
   
   - returns: the configured animation to use for the progress view
   */
  private func progressAnimation(leftToRight: Bool, animationDuration duration: CFTimeInterval) -> CAAnimation {
    let animation: CABasicAnimation = CABasicAnimation(keyPath: "position.x")
    animation.fromValue = leftToRight ? -frame.size.width : frame.size.width * 2
    animation.toValue = leftToRight ? frame.size.width * 2 : -frame.size.width
    animation.duration = duration
    animation.fillMode = kCAFillModeBoth
    animation.repeatCount = Float.infinity
    return animation
  }
}
