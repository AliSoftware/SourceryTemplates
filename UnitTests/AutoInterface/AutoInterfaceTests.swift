//
//  AutoInterfaceTests.swift
//  TemplatesDemo
//
//  Created by Olivier HALLIGON on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import XCTest

class AutoInterfaceTests: XCTestCase {

  class UserWSClientFactory {
    func build() -> IUserWSClient {
      return WSClient.UserWSClient()
    }
  }

  func testUserWSClient() {
    let f = UserWSClientFactory()
    let uwsc: IUserWSClient = f.build()
    let users = uwsc.fetchUsers()
    print(users)
  }

  func testProductWSClient() {
    let pwsc: ProductsProvider = WSClient.ProductsWSClient()
    let products = pwsc.fetchProducts()
    print(products)
  }
}
