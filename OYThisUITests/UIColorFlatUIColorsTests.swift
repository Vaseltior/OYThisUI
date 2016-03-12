//
//  UIColorFlatUIColorsTests.swift
//  OYThisUI
//
//  Created by Samuel Grau on 12/03/2016.
//  Copyright © 2016 Samuel GRAU. All rights reserved.
//

import XCTest
import UIKit

@testable import OYThisUI

class UIColorFlatUIColorTests: XCTestCase {
  var r: CGFloat = 0
  var g: CGFloat = 0
  var b: CGFloat = 0
  var a: CGFloat = 0
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testFuicBackgroundColor() {
    let c = UIColor.fuicBackgroundColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (246/255.0) && g == (246/255.0) && b == (246/255.0) && a == 1.0)
  }
  
  func testFuicGrayColor() {
    let c = UIColor.fuicGrayColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (146/255) && g == (146/255) && b == (157/255) && a == 1.0)
  }
  
  func testTurquoiseColor() {
    let c = UIColor.turquoiseColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (26/255) && g == (188/255) && b == (156/255) && a == 1.0)
  }
  
  func testGreenSeaColor() {
    let c = UIColor.greenSeaColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (22/255) && g == (160/255) && b == (133/255) && a == 1.0)
  }
  
  //
  func testEmeraldColor() {
    let c = UIColor.emeraldColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (46/255) && g == (204/255) && b == (113/255) && a == 1.0)
  }
  
  //
  func testNephritisColor() {
    let c = UIColor.nephritisColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (39/255) && g == (174/255) && b == (96/255) && a == 1.0)
  }
  
  //
  func testPeterRiverColor() {
    let c = UIColor.peterRiverColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (52/255) && g == (152/255) && b == (219/255) && a == 1.0)
  }
  
  //
  func testBelizeHoleColor() {
    let c = UIColor.belizeHoleColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (41/255) && g == (128/255) && b == (185/255) && a == 1.0)
  }
  
  //
  func testAmethystColor() {
    let c = UIColor.amethystColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (155/255) && g == (89/255) && b == (182/255) && a == 1.0)
  }
  
  //
  func testWisteriaColor() {
    let c = UIColor.wisteriaColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (142/255) && g == (68/255) && b == (173/255) && a == 1.0)
  }
  
  //
  func testWetAsphaltColor() {
    let c = UIColor.wetAsphaltColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (52/255) && g == (73/255) && b == (94/255) && a == 1.0)
  }
  
  //
  func testMidnightBlueColor() {
    let c = UIColor.midnightBlueColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (44/255) && g == (62/255) && b == (80/255) && a == 1.0)
  }
  
  //
  func testSunflowerColor() {
    let c = UIColor.sunflowerColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (241/255) && g == (196/255) && b == (15/255) && a == 1.0)
  }
  
  //
  func testCarrotColor() {
    let c = UIColor.carrotColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (230/255) && g == (126/255) && b == (34/255) && a == 1.0)
  }
  
  //
  func testPumpkinColor() {
    let c = UIColor.pumpkinColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (211/255) && g == (84/255) && b == (0/255) && a == 1.0)
  }
  
  //
  func testAlizarinColor() {
    let c = UIColor.alizarinColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (231/255) && g == (76/255) && b == (60/255) && a == 1.0)
  }
  
  //
  func testPomegranateColor() {
    let c = UIColor.pomegranateColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (192/255) && g == (57/255) && b == (43/255) && a == 1.0)
  }
  
  //
  func testCloudsColor() {
    let c = UIColor.cloudsColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (236/255) && g == (240/255) && b == (241/255) && a == 1.0)
  }
  
  //
  func testSilverColor() {
    let c = UIColor.silverColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (189/255) && g == (195/255) && b == (199/255) && a == 1.0)
  }
  
  //
  func testConcreteColor() {
    let c = UIColor.concreteColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (149/255) && g == (165/255) && b == (166/255) && a == 1.0)
  }
  
  //
  func testAsbestosColor() {
    let c = UIColor.asbestosColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == (127/255) && g == (140/255) && b == (141/255) && a == 1.0)
  }
  
  //
  func testGrayBackGroundColor() {
    let c = UIColor.grayBackGroundColor()
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == 0.95 && g == 0.95 && b == 0.95 && a == 1.0)
  }
  
  func testColorFromRGB() {
    var c = UIColor.colorFromRGB(0x000000)
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == 0 && g == 0 && b == 0 && a == 1.0)
    
    c = UIColor.colorFromRGB(0xFFFFFF)
    c.getRed(&r, green: &g, blue: &b, alpha: &a)
    XCTAssert(r == 1 && g == 1 && b == 1 && a == 1.0)
  }
}
