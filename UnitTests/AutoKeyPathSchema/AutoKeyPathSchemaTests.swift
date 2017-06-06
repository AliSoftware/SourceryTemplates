//
//  AutoKeyPathSchemaTests.swift
//  TemplatesDemo
//
//  Created by Olivier HALLIGON on 06/06/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import XCTest

class AutoKeyPathSchemaTests: XCTestCase {
    func testKeyPathSchema() {
      let r1 = Rect(origin: Point(x: 5, y: 12), size: Size(width: 42, height: 1337))
      let sz = Size(width: 42, height: 1337)
      let r2 = Rect(origin: r1.origin, size: sz)
      XCTAssertEqual(r1, r2)
    }
}
