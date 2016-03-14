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
 This class draws a simple circle view
 */
@IBDesignable
public class OYTEllipseView: OYTView {
  
  // MARK: - Properties
  
  /// The color of the ellipse
  @IBInspectable public var ellipseColor: UIColor = UIColor.whiteColor() {
    didSet {
      // React to when this is set...
      self.setNeedsDisplay() // Tell that a new drawing is needed after the main color update
    }
  }
  
  /// Tells if the ellipse view should be drawn completely or just borders
  @IBInspectable public var fulfillEllipse: Bool = true {
    didSet {
      self.setNeedsDisplay()
    }
  }
  
  /// The borders in points of the ellipse
  @IBInspectable public var ellipseBorderWidth: CGFloat = 1.0 {
    didSet {
      self.setNeedsDisplay()
    }
  }
  
  // MARK: - Init
  
  /**
  The common initialization called by OYTView at initialization, through init(frame)
  qnd init(coder)
  */
  public override func commonInitialization() {
    super.commonInitialization()
    // Using draw rect, so we need to define a clear background because we don't want
    // to see black where there should be tranparency
    self.backgroundColor = UIColor.clearColor()
  }
  
  // MARK: - Drawing methods
  
  /**
  Draws the receiver’s image within the passed-in rectangle.
  
  - parameter rect: The portion of the view’s bounds that needs to be updated. 
  The first time your view is drawn, this rectangle is typically the entire visible bounds of your view. 
  However, during subsequent drawing operations, the rectangle may specify only part of your view
  */
  public override func drawRect(rect: CGRect) {
    super.drawRect(rect)
    
    let context = UIGraphicsGetCurrentContext()
    // Ensures that the bgColor is still clear even if the dev has not defined it...
    self.fillRectWithBackgroundColor(context, rect: rect)
    
    let innerRect = self.innerRect(rect)
    
    CGContextSetFillColorWithColor(context, self.ellipseColor.CGColor)
    CGContextSetStrokeColorWithColor(context, self.ellipseColor.CGColor)
    
    CGContextSetLineWidth(context, self.ellipseBorderWidth)
    CGContextAddEllipseInRect(context, innerRect)
    // Should we fulfill the entire view??? or draw borders???
    if self.fulfillEllipse {
      CGContextFillEllipseInRect(context, innerRect)
      
    } else {
      CGContextStrokeEllipseInRect(context, innerRect)
    }
    
    CGContextFillPath(context)
  }
  
  // MARK: - Private calls
  
  /**
  Fill the rect in the context with the current bqckgorund color
  
  - parameter context: the graphical context in where to draw
  - parameter rect:    The portion of the view’s bounds that needs to be updated.
  */
  private func fillRectWithBackgroundColor(context: CGContext?, rect: CGRect) {
    // Ensures that the bgColor is still clear even if the dev has not defined it...
    let bgColor = self.backgroundColor ?? UIColor.clearColor()
    CGContextSetFillColorWithColor(context, bgColor.CGColor)
    CGContextFillRect(context, rect)
  }
  
  private func innerRect(rect: CGRect) -> CGRect {
    let scaleRatio = 1.0/UIScreen.mainScreen().scale
    let inset = scaleRatio*self.ellipseBorderWidth
    return CGRectInset(rect, inset, inset)
  }
}
