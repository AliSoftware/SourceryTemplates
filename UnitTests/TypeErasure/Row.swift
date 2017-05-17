//
//  Row.swift
//  CodeGenDemo
//
//  Created by Olivier Halligon on 14/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

// Inspiration: https://www.bignerdranch.com/blog/breaking-down-type-erasures-in-swift/

// sourcery: TypeErase = Model
protocol Row {
  associatedtype Model

  var sizeLabelText: String { get set }

  func configure(model: Model)
}


// Models

struct Folder {}
struct File {}



// Rows

class FolderCell: Row {
  typealias Model = Folder
  var sizeLabelText: String = ""
  func configure(model: Folder) {
    print("Configured a \(type(of: self))")
  }
}

class FileCell: Row {
  typealias Model = File
  var sizeLabelText: String = ""
  func configure(model: File) {
    print("Configured a \(type(of: self))")
  }
}

class DetailFileCell: Row {
  typealias Model = File
  var sizeLabelText: String = ""
  func configure(model: File) {
    print("Configured a \(type(of: self))")
  }
}

