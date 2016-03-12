//
//  UIVIewImagesTests.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import XCTest
@testable import OYThisUI

class UIVIewImagesTests: XCTestCase {
  func testConvertingViewToImageStatic() {
    let v = UIView(frame: CGRect(x: 5, y: 12, width: 21, height: 33))
    let image = UIView.oytImageFromView(v)
    XCTAssertEqual(image.size.width, 21)
    XCTAssertEqual(image.size.height, 33)
  }
  func testConvertingViewToImageNonStatic() {
    let v = UIView(frame: CGRect(x: 5, y: 12, width: 21, height: 33))
    let image = v.oytToImage()
    XCTAssertEqual(image.size.width, 21)
    XCTAssertEqual(image.size.height, 33)
  }
}
