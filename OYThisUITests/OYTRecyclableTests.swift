//
//  OYTRecyclableTests.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import XCTest
@testable import OYThisUI

class OYTRecyclableTests: XCTestCase {
  func testOYTRecyclingInit() {
    let aTest: OYTRecyclableView = OYTRecyclableView(reuseIdentifier: "toto")
    XCTAssert(aTest.oytReuseIdentifier == "toto", "function commonInitialization should have been call")
  }
  
  func testRecycler() {
    let recycler = OYTRecyclableViewRecycler()
    // When initer, number of stored elements should be 0
    XCTAssertEqual(recycler.reuseIdentifiersToRecycledViews.count, 0)
    // At first should be nil with any identifier
    XCTAssertNil(recycler.dequeueReusableViewWithIdentifier(""))
    XCTAssertNil(recycler.dequeueReusableViewWithIdentifier("NonEmpty"))
    
    var v = OYTRecyclableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    recycler.recycleView(v)
    XCTAssertEqual(recycler.reuseIdentifiersToRecycledViews.count, 1)
    recycler.reduceMemoryUsage()
    
    v = OYTRecyclableView(reuseIdentifier: "111")
    recycler.recycleView(v)
    XCTAssertEqual(recycler.reuseIdentifiersToRecycledViews.count, 1)
    
    // Adding another view not recyclable
    recycler.recycleView(UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0)))
    XCTAssertEqual(recycler.reuseIdentifiersToRecycledViews.count, 2)
    
    // All should be clean after a cleanup
    recycler.reduceMemoryUsage()
    XCTAssertEqual(recycler.reuseIdentifiersToRecycledViews.count, 0)
  }
  
  func testRecyclerDequeuing() {
    let recycler = OYTRecyclableViewRecycler()
    recycler.dequeueReusableViewWithIdentifier("")
    var v = OYTRecyclableView(reuseIdentifier: "111")
    recycler.recycleView(v)
    v = OYTRecyclableView(reuseIdentifier: "111")
    recycler.recycleView(v)
    // Should be one because it is the same identifier
    XCTAssertEqual(recycler.reuseIdentifiersToRecycledViews.count, 1)
    
    XCTAssertNotNil(recycler.dequeueReusableViewWithIdentifier("111"))
  }
}
