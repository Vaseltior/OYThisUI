//
//  UIColor+FlatUIColors.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import Foundation

/**
 Flat UI Colors additions
 */
extension UIColor {
  ///
  /// A background color in flat ui colors style
  ///
  /// - returns: A background color in flat ui colors style
  ///
  public static func fuicBackgroundColor() -> UIColor {
    return UIColor(white: 246.0/255.0, alpha: 1.0)
  }

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

  ///
  /// A gray color in flat ui colors style
  ///
  /// - returns: A gray color in flat ui colors style
  ///
  public static func fuicGrayColor() -> UIColor {
    return UIColor(r: 146, g: 146, b: 157)
  }

  public convenience init(r: Int, g: Int, b: Int) {
    self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
  }

  public static func turquoiseColor() -> UIColor {
    return UIColor(r: 26, g: 188, b: 156)
  }

  public static func greenSeaColor() -> UIColor {
    return UIColor(r: 22, g: 160, b: 133)
  }

  public static func emeraldColor() -> UIColor {
    return UIColor(r: 46, g: 204, b: 113)
  }

  public static func nephritisColor() -> UIColor {
    return UIColor(r: 39, g: 174, b: 96)
  }

  public static func peterRiverColor() -> UIColor {
    return UIColor(r: 52, g: 152, b: 219)
  }

  public static func belizeHoleColor() -> UIColor {
    return UIColor(r: 41, g: 128, b: 185)
  }

  public static func amethystColor() -> UIColor {
    return UIColor(r:155, g:89, b:182)
  }

  public static func wisteriaColor() -> UIColor {
    return UIColor(r:142, g:68, b:173)
  }

  public static func wetAsphaltColor() -> UIColor {
    return UIColor(r:52, g:73, b:94)
  }

  public static func midnightBlueColor() -> UIColor {
    return UIColor(r:44, g:62, b:80)
  }

  public static func sunflowerColor() -> UIColor {
    return UIColor(r:241, g:196, b:15)
  }

  public static func carrotColor() -> UIColor {
    return UIColor(r:230, g:126, b:34)
  }

  public static func pumpkinColor() -> UIColor {
    return UIColor(r:211, g:84, b:0)
  }

  public static func alizarinColor() -> UIColor {
    return UIColor(r:231, g:76, b:60)
  }

  public static func pomegranateColor() -> UIColor {
    return UIColor(r:192, g:57, b:43)
  }

  public static func cloudsColor() -> UIColor {
    return UIColor(r:236, g:240, b:241)
  }

  public static func silverColor() -> UIColor {
    return UIColor(r:189, g:195, b:199)
  }

  public static func concreteColor() -> UIColor {
    return UIColor(r:149, g:165, b:166)
  }

  public static func asbestosColor() -> UIColor {
    return UIColor(r:127, g:140, b:141)
  }

  public static func grayBackGroundColor() -> UIColor {
    return UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
  }
}
