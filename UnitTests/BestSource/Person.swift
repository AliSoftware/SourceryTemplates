//
//  Burrito.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 20/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

// sourcery:begin: BestSource

struct Address {
  let street: String
  let zipcode: String
}

class Person {
  let firstName: String
  let lastName: String
  var dob: Date?
  var address: Address? = nil

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

  var age: Int? {
    return self.dob.flatMap({ Calendar.current.dateComponents([.year], from: $0, to: Date()).year })
  }

  var dog: Dog?

  func callDog(makeItBark: Bool) -> Bool {
    if let dog = dog {
      if makeItBark { dog.bark(times: 3) }
      return true
    } else {
      return false
    }
  }
}

class Dog {
  let nickname: String
  init(nickname: String) {
    self.nickname = nickname
  }

  func bark(times: Int) {
    (0..<times).forEach({ _ in print("Woof") })
  }
}

// sourcery:end: BestSource
