//
//  User.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

class Address {
  let number: Int? = nil
  let firstLine: String
  var secondLine: String = ""
  let city: String
  let zipcode: String

  // sourcery:inline:Address.MemberwiseInit
  internal init(firstLine: String, secondLine: String = "", city: String, zipcode: String) {
    self.firstLine = firstLine
    self.secondLine = secondLine
    self.city = city
    self.zipcode = zipcode
  }
  // sourcery:end
}

class User {
  let firstName: String
  let lastName: String
  // sourcery: MemberwiseDefault = nil
  let birthDate: Date?
  let address: Address?
  var age: Int? {
    guard let dob = self.birthDate else { return nil }
    return Calendar.current.dateComponents([.year], from: dob, to: Date()).year
  }

  // sourcery:inline:User.MemberwiseInit
  internal init(firstName: String, lastName: String, birthDate: Date? = nil, address: Address?) {
    self.firstName = firstName
    self.lastName = lastName
    self.birthDate = birthDate
    self.address = address
  }
  // sourcery:end
}
