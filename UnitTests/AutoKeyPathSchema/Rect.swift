//
//  Point.swift
//  TemplatesDemo
//
//  Created by Olivier HALLIGON on 06/06/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

protocol AutoKeyPathSchema {}

struct Point: AutoKeyPathSchema {
  var x: Double, y: Double
}

struct Size: AutoKeyPathSchema {
  var width: Double, height: Double
}

struct Rect: AutoKeyPathSchema {
  var origin: Point
  var size: Size
}
