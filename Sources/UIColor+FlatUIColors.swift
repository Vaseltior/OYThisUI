//
//  UIColor+FlatUIColors.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import UIKit

extension UIColor {
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
  
  /**
   A convenience initializer function for RGB values between 0...255
   
   - parameter r: red value [0..255]
   - parameter g: green value [0..255]
   - parameter b: blue value [0..255]
   
   - returns: An instance of `UIColor`
   */
  public convenience init(r: Int, g: Int, b: Int) {
    self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
  }
  
}

extension UIColor {
  /**
   Turquoise Color
   
   - returns: Turquoise Color (r: 26, g: 188, b: 156)
   */
  public static func turquoiseColor() -> UIColor {
    return UIColor(r: 26, g: 188, b: 156)
  }
  
  /**
   Green sea color
   
   - returns: Green sea color (r: 22, g: 160, b: 133)
   */
  public static func greenSeaColor() -> UIColor {
    return UIColor(r: 22, g: 160, b: 133)
  }
  
  /**
   emeraldColor
   
   - returns: UIColor(r: 46, g: 204, b: 113)
   */
  public static func emeraldColor() -> UIColor {
    return UIColor(r: 46, g: 204, b: 113)
  }
  
  /**
   nephritisColor
   
   - returns: UIColor(r: 39, g: 174, b: 96)
   */
  public static func nephritisColor() -> UIColor {
    return UIColor(r: 39, g: 174, b: 96)
  }
}

extension UIColor {
  /**
   peterRiverColor
   
   - returns: UIColor(r: 52, g: 152, b: 219)
   */
  public static func peterRiverColor() -> UIColor {
    return UIColor(r: 52, g: 152, b: 219)
  }
  
  /**
   belizeHoleColor
   
   - returns: UIColor(r: 41, g: 128, b: 185)
   */
  public static func belizeHoleColor() -> UIColor {
    return UIColor(r: 41, g: 128, b: 185)
  }
  
  /**
   amethystColor
   
   - returns: UIColor(r:155, g:89, b:182)
   */
  public static func amethystColor() -> UIColor {
    return UIColor(r:155, g:89, b:182)
  }
  
  /**
   wisteriaColor
   
   - returns: UIColor(r:142, g:68, b:173)
   */
  public static func wisteriaColor() -> UIColor {
    return UIColor(r:142, g:68, b:173)
  }
}

extension UIColor {
  /**
   wetAsphaltColor
   
   - returns: UIColor(r:52, g:73, b:94)
   */
  public static func wetAsphaltColor() -> UIColor {
    return UIColor(r:52, g:73, b:94)
  }
  
  /**
   midnightBlueColor
   
   - returns: UIColor(r:44, g:62, b:80)
   */
  public static func midnightBlueColor() -> UIColor {
    return UIColor(r:44, g:62, b:80)
  }
  
}

extension UIColor {
  /**
   sunflowerColor
   
   - returns: UIColor(r:241, g:196, b:15)
   */
  public static func sunflowerColor() -> UIColor {
    return UIColor(r:241, g:196, b:15)
  }
  
  /**
   carrotColor
   
   - returns: UIColor(r:230, g:126, b:34)
   */
  public static func carrotColor() -> UIColor {
    return UIColor(r:230, g:126, b:34)
  }
  
  /**
   pumpkinColor
   
   - returns: UIColor(r:211, g:84, b:0)
   */
  public static func pumpkinColor() -> UIColor {
    return UIColor(r:211, g:84, b:0)
  }
  
  /**
   alizarinColor
   
   - returns: UIColor(r:231, g:76, b:60)
   */
  public static func alizarinColor() -> UIColor {
    return UIColor(r:231, g:76, b:60)
  }
  
  /**
   pomegranateColor
   
   - returns: UIColor(r:192, g:57, b:43)
   */
  public static func pomegranateColor() -> UIColor {
    return UIColor(r:192, g:57, b:43)
  }
}

extension UIColor {
  
  /**
   cloudsColor
   
   - returns: UIColor(r:236, g:240, b:241)
   */
  public static func cloudsColor() -> UIColor {
    return UIColor(r:236, g:240, b:241)
  }
  
  /**
   silverColor
   
   - returns: UIColor(r:189, g:195, b:199)
   */
  public static func silverColor() -> UIColor {
    return UIColor(r:189, g:195, b:199)
  }
  
  /**
   concreteColor
   
   - returns: UIColor(r:149, g:165, b:166)
   */
  public static func concreteColor() -> UIColor {
    return UIColor(r:149, g:165, b:166)
  }
  
  /**
   asbestosColor
   
   - returns: UIColor(r:127, g:140, b:141)
   */
  public static func asbestosColor() -> UIColor {
    return UIColor(r:127, g:140, b:141)
  }
}
