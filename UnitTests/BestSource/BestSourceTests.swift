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
    boris.bestDog = BestDog(bestNickname: "Fido")
    if let bestDog = boris.bestDog {
      print(bestDog)
    }

    let bob = Person(firstName: "Bob", lastName: "Tasteless")
    let bestBob: BestPerson = bob.butBetter
    print(bestBob)

    let bestAddress = BestAddress(bestStreet: "BestStreet", bestZipcode: "42")
    bestBob.bestAddress = bestAddress

    XCTAssertEqual(bob.address?.street, bestBob.bestAddress?.bestStreet)
    XCTAssertEqual(bob.address?.zipcode, bestBob.bestAddress?.bestZipcode)
    XCTAssertEqual(bestBob.bestAddress?.tasteless.street, bob.address?.street)
    XCTAssertEqual(bestBob.bestAddress?.tasteless.zipcode, bob.address?.zipcode)
  }
  
}
