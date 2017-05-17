//
//  TemplatesDemoTests.swift
//  TemplatesDemoTests
//
//  Created by Olivier Halligon on 17/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import XCTest

class TypeErasureTests: XCTestCase {
    
    func testPokemon() {
      let list: [AnyPokemon<Thunder>] = [AnyPokemon(Pikachu()), AnyPokemon(Raichu())]
      list.forEach { (thunderPokemon: AnyPokemon<Thunder>) in
        thunderPokemon.attack(move: Thunder())
      }
    }

}
