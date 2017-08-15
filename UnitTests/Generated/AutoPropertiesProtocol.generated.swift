// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: Dependencies

protocol IWebServiceClientContainer { var webServiceClient: WebServiceClient { get } }
extension Dependencies: IWebServiceClientContainer {}

protocol ILoginManagerContainer { var loginManager: LoginManager { get } }
extension Dependencies: ILoginManagerContainer {}

protocol ICartManagerContainer { var cartManager: CartManager { get } }
extension Dependencies: ICartManagerContainer {}

// MARK: Person

protocol Namable { var name: String { get } }
extension Person: Namable {}

protocol DetailsProvider { var details: Person.Details? { get } }
extension Person: DetailsProvider {}

protocol HasDogs { var dogs: [Person.Dog] { get } }
extension Person: HasDogs {}

