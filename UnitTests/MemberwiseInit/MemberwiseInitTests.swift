//
//  MemberwiseInitTests.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import XCTest

class MemberwiseInitTests: XCTestCase {
    
  func testUser() {
    _ = User.init(firstName: "Olivier", lastName: "Halligon", address: nil)
  }

  func testAddress() {
    _ = Address(firstLine: "Here", city: "There", zipcode: "1337")
  }
}
