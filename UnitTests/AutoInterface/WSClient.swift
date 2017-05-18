//
//  WSClient.swift
//  TemplatesDemo
//
//  Created by Olivier HALLIGON on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

protocol AutoInterface {}

class WSClient {
  class UserWSClient: AutoInterface {
    struct User {
      let id: Int
      let name: String
    }

    let baseURL: URL = URL(string: "https://example.com/api")!

    func fetchUsers() -> [User] {
      return (0..<10).map { User(id: $0, name: "User\($0)") }
    }

    func fetchUser(id: Int) -> User? {
      return User(id: id, name: "User\(id)")
    }
  }

  // sourcery: AutoInterface = ProductsProvider
  class ProductsWSClient: AutoInterface {
    struct Product {
      let id: Int
      let name: String
    }

    var lastError: Error?
    var errored: Bool {
      return lastError != nil
    }

    func fetchProducts() -> [Product] {
      return (0..<12).map { Product(id: $0, name: "Product-\($0)") }
    }
  }

  let users: UserWSClient = .init()
  let products: ProductsWSClient = .init()
}
