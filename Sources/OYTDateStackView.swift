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

@IBDesignable
public class OYTDateStackView: OYTView {
  
  // MARK: - Properties
  
  /// The date represented by the view
  @IBInspectable public var date: NSDate = NSDate() {
    didSet {
      // Get a date formatter
      let f = NSDateFormatter()
      f.dateFormat = "dd" // Set the day style
      self.dayLabel.text = f.stringFromDate(self.date) // set the day representation
      
      f.dateFormat = "MMMM" // update the format
      self.monthLabel.text = f.stringFromDate(self.date) // the the month representation
      
      // self.setNeedsLayout() // No need, automatic update for those properties
    }
  }
  
  /// The text color used by the views
  @IBInspectable public var textColor: UIColor = UIColor.whiteColor() {
    didSet {
      self.dayLabel.textColor = self.textColor
      self.monthLabel.textColor = self.textColor
    }
  }
  
  /// The font used to display the views (at least one font for now)
  @IBInspectable public var dayFontSize: CGFloat = 15.0 {
    didSet {
      self.dayLabel.font = UIFont.systemFontOfSize(self.dayFontSize)
      self.setNeedsLayout()
      self.setNeedsDisplay()
    }
  }
  @IBInspectable public var monthFontSize: CGFloat = 15.0 {
    didSet {
      self.monthLabel.font = UIFont.systemFontOfSize(self.monthFontSize)
      self.setNeedsLayout()
      self.setNeedsDisplay()
    }
  }
  
  @IBInspectable var lineWidth: CGFloat = 1.0 {
    didSet {
      // Ask to redraw the view in the next drawing loop
      self.setNeedsDisplay()
    }
  }
  // The padding at the left and right of the horizontal line
  @IBInspectable var linePadding: CGFloat = 12.0 { didSet { self.setNeedsDisplay() } }
  
  
  /// Day view representation
  private lazy var dayLabel: UILabel = {
    let l = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    l.textAlignment = .Center
    return l
  }()
  
  /// Month view representation
  private lazy var monthLabel: UILabel = {
    let l = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    l.textAlignment = .Center
    return l
  }()
  
  // MARK: - Initialization
  
  /**
  This function is called by the init(frame) and the init(coder) methods, 
  so that there is no need to implement further methods in the subclasses.
  */
  public override func commonInitialization() {
    super.commonInitialization()
    
    // Adding labels to the view hierarchy
    self.addSubview(self.dayLabel)
    self.addSubview(self.monthLabel)
  }
  
  // Only called in interface builder
  public override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    
    self.date = NSDate() // test because did set is not called
    self.textColor = UIColor.whiteColor()
    self.dayFontSize = 50.0
    self.monthFontSize = 15.0
    //self.dayLabel.backgroundColor = UIColor.greenColor()
    //self.monthLabel.backgroundColor = UIColor.blueColor()
  }
  
  // MARK: - Layout
  
  /**
  Lays out subviews.
  */
  public override func layoutSubviews() {
    super.layoutSubviews()
    let width = CGRectGetWidth(self.bounds)
    let halfHeight = CGRectGetHeight(self.bounds)/2.0
    
    var f = self.dayLabel.frame
    f.origin = CGPoint(x: 0, y: halfHeight - self.dayLabel.oytSizeWithView(self).height)
    f.size = CGSize(
      width: width,
      height: self.dayLabel.oytSizeWithView(self).height
    )
    self.dayLabel.frame = f
    
    f = self.monthLabel.frame
    f.origin = CGPoint(x: 0, y: halfHeight)
    f.size = CGSize(
      width: width,
      height: self.dayLabel.oytSizeWithView(self).height
    )
    self.monthLabel.frame = f
  }
  
  /**
   Draws the receiver’s image within the passed-in rectangle.
   
   - parameter rect: The portion of the view’s bounds that needs to be updated. 
   The first time your view is drawn, this rectangle is typically the entire 
   visible bounds of your view. However, during subsequent drawing operations, 
   the rectangle may specify only part of your view.
   */
  public override func drawRect(rect: CGRect) {
    super.drawRect(rect)
    // Drawing a line in the middle
    guard let context = UIGraphicsGetCurrentContext() else {
      // Can't get a graphic context, no need to continue here
      return
    }
    
    //let scaleRatio = 1.0/UIScreen.mainScreen().scale
    let bWidth: CGFloat = 1.0//scaleRatio*self.lineWidth
    let halfHeight = CGRectGetHeight(rect)/2.0
    let width = CGRectGetWidth(rect)
    CGContextSetStrokeColorWithColor(context, self.textColor.CGColor)
    CGContextSetFillColorWithColor(context, self.textColor.CGColor)
    CGContextSetLineWidth(context, bWidth)
    CGContextMoveToPoint(context, self.linePadding, halfHeight)
    CGContextAddLineToPoint(context, width-self.linePadding, halfHeight)
    CGContextStrokePath(context)
  }
}
