//
//  Person.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

struct Person: AutoPropertiesProtocol {
  struct Details {
    let dob: Date
    let age: Int
  }
  struct Dog {
    let name: String
    let nickname: String?
  }
  // sourcery: PropertiesProtocol = Namable
  let name: String
  // sourcery: PropertiesProtocolPrefix = "", PropertiesProtocolSuffix = Provider
  let details: Details?
  let dogs: [Dog]
}
