//
//  OYTInsetLabel.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import UIKit

/**
 A UILabel that accepts insets
 */
public class OYTInsetLabel: UILabel {
  /// The insets that will be used
  public var insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
  
  /**
   Draws the receiver’s text (or its shadow) in the specified rectangle.
   You should not call this method directly. 
   This method should only be overridden by subclasses that want to modify 
   the default drawing behavior for the label’s text.
   By the time this method is called, the current graphics context is already 
   configured with the default environment and text color for drawing. 
   In your overridden method, you can configure the current context further 
   and then invoke super to do the actual drawing or you can do the drawing yourself. 
   If you do render the text yourself, you should not invoke `super`.
   
   - parameter rect: The rectangle in which to draw the text.
   */
  override public func drawTextInRect(rect: CGRect) {
    super.drawTextInRect(UIEdgeInsetsInsetRect(rect, self.insets))
  }
}
