// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



// MARK: ProductsProvider

protocol ProductsProvider {
	var lastError: Error? { get set }
	var errored: Bool { get }
	func fetchProducts() -> [WSClient.ProductsWSClient.Product]
}
extension WSClient.ProductsWSClient: ProductsProvider {}


// MARK: IUserWSClient

protocol IUserWSClient {
	func fetchUsers() -> [WSClient.UserWSClient.User]
	func fetchUser(id: Int) -> WSClient.UserWSClient.User?
}
extension WSClient.UserWSClient: IUserWSClient {}

