//
//  Pokemon.swift
//  CodeGenDemo
//
//  Created by Olivier HALLIGON on 12/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

class Thunder { }
class Fire { }

// sourcery: TypeErase = PokemonType
protocol Pokemon {
  associatedtype PokemonType
  func attack(move: PokemonType)
}

struct Pikachu: Pokemon {
  typealias PokemonType = Thunder
  func attack(move: Thunder) { /*⚡️*/ }
}

class Charmander: Pokemon {
  func attack(move: Fire) { /*🔥*/ }
}

class Raichu: Pokemon {
  typealias PokemonType = Thunder
  func attack(move: Thunder) { /*⚡️*/ }
}
