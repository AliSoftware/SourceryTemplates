// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



// MARK: PropertiesProtocols for Dependencies

protocol IWebServiceClientContainer { var webServiceClient: WebServiceClient { get } }
extension Dependencies: IWebServiceClientContainer {}

protocol ILoginManagerContainer { var loginManager: LoginManager { get } }
extension Dependencies: ILoginManagerContainer {}

protocol ICartManagerContainer { var cartManager: CartManager { get } }
extension Dependencies: ICartManagerContainer {}

