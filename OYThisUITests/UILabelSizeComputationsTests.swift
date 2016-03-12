//
//  UILabelSizeComputationsTests.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import XCTest
@testable import OYThisUI

class UILabelSizeComputationsTests: XCTestCase {
  /**
   Tests the computed sizes without some elements
   */
  func testSizeWithSizeEmpty() {
    let l = UILabel(frame: CGRectZero)
    l.font = nil
    l.text = nil
    let size = l.oytSizeWithSize(CGSize(width: CGFloat.max, height: CGFloat.max))
    XCTAssertEqual(size.width, 0)
    XCTAssertEqual(size.height, 0)
  }
  
  /**
   Tests the computed sizes with a system font of 12.0 pixels
   */
  func testSizeWithSize() {
    let l = UILabel(frame: CGRectZero)
    l.font = UIFont.systemFontOfSize(12.0)
    l.text = "Hello"
    var size = l.oytSizeWithSize(CGSize(width: CGFloat.max, height: CGFloat.max))
    XCTAssertEqual(size.width, 29.8984375)
    XCTAssertEqual(size.height, 15.3203125)

    size = l.oytSizeWithView(UIView(frame: CGRect(x: 0, y: 0, width: CGFloat.max, height: CGFloat.max)))
    XCTAssertEqual(size.width, 29.8984375)
    XCTAssertEqual(size.height, 15.3203125)
  }
  
  /**
   Tests the computed sizes with a system font of 12.0 pixels in a given view
   */
  func testSizeWithView() {
    let l = UILabel(frame: CGRectZero)
    l.font = UIFont.systemFontOfSize(12.0)
    l.text = "Hello"
    var size = l.oytSizeWithSize(CGSize(width: CGFloat.max, height: CGFloat.max))
    XCTAssertEqual(size.width, 29.8984375)
    XCTAssertEqual(size.height, 15.3203125)

    size = l.oytSizeWithView(UIView(frame: CGRect(x: 0, y: 0, width: CGFloat.max, height: CGFloat.max)))
    XCTAssertEqual(size.width, 29.8984375)
    XCTAssertEqual(size.height, 15.3203125)
  }
}
