//
//  Dependencies.swift
//  TemplatesDemo
//
//  Created by Olivier Halligon on 18/05/2017.
//  Copyright © 2017 AliSoftware. All rights reserved.
//

import Foundation

protocol AutoPropertiesProtocol {}

protocol WebServiceClient { /* … */ }
class LoginManager { /* … */ }
class CartManager { /* … */ }

// sourcery:begin: PropertiesProtocolPrefix = I, PropertiesProtocolSuffix = Container
class Dependencies: AutoPropertiesProtocol {
  let webServiceClient: WebServiceClient
  let loginManager: LoginManager
  let cartManager: CartManager

  init(wsClient: WebServiceClient, loginManager: LoginManager, cartManager: CartManager) {
    self.webServiceClient = wsClient
    self.loginManager = loginManager
    self.cartManager = cartManager
  }
}
// sourcery:end
