//
//  BestSourceTests.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 20/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import XCTest

class BestSourceTests: XCTestCase {

  func testBest() {
    let boris = BestPerson(bestFirstName: "Boris", bestLastName: "Bügling")
    boris.bestDog = BestDog(bestNickname: "Fido").tasteless
    if let bestDog = boris.bestDog {
      print(bestDog.nacho)
    }
  }
  
}
