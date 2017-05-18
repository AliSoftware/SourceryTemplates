//
//  AutoPropertiesProtocolTests.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import XCTest

class AutoPropertiesProtocolTests: XCTestCase {

  class LoginScreen {
    typealias Dependencies = IWebServiceClientContainer & ILoginManagerContainer
    private let deps: Dependencies
    init(deps: Dependencies) {
      self.deps = deps
    }

    func login() {
      print(self.deps.webServiceClient)
      print(self.deps.loginManager)
      // print(self.deps.cartManager) // Can't access this, which is a good thing :)
    }
  }

  func testLoginScreen() {
    class FakeWSClient: WebServiceClient { /* … */ }

    let all = Dependencies(
      wsClient: FakeWSClient(),
      loginManager: LoginManager(),
      cartManager: CartManager()
    )

    let loginScreen = LoginScreen(deps: all)
    loginScreen.login()
  }

  func testPerson() {
    let p = Person(name: "Bob", details: nil, dogs: [])
    func printName(_ namable: HasName) {
      print(namable.name)
    }
    printName(p)
  }
}
