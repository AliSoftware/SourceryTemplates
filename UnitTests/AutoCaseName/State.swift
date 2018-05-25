//
//  State.swift
//  UnitTests
//
//  Created by Olivier HALLIGON on 25/05/2018.
//  Copyright © 2018 AliSoftware. All rights reserved.
//

protocol AutoCaseName {}

enum State: AutoCaseName {
  case notLoaded
  case loading(message: String, percent: Double)
  case loaded(data: [String])
  case error(message: String, code: Int)
  case requires2FACode(code: String)
}

struct Invalid: AutoCaseName {
  var foo: Int
}
