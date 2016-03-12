//
//  OYTTableViewCellTests.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import XCTest
@testable import OYThisUI

class OYTTableViewCellTests: XCTestCase {
  class MyView: OYTTableViewCell {
    var aTest: Int = 0
    
    override func commonInitialization() {
      super.commonInitialization()
      self.aTest = 60
    }
  }
  
  func testThatCommonInitIsCalled() {
    let aTest: MyView = MyView(frame: CGRectZero)
    XCTAssert(aTest.aTest == 60, "function commonInitialization should have been called")
    let rootView = NSBundle(forClass: self.dynamicType).loadNibNamed("MyOYTView", owner: self, options: nil)[1]
    guard let a = rootView as? OYTTableViewCell else {
      XCTFail()
      return
    }
    a.commonInitialization()
  }
}
