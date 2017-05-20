// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

protocol Tasteless {
  associatedtype NachoType
  var nacho: NachoType { get }
}
protocol Nacho {
  associatedtype TastelessType
  var tasteless: TastelessType { get }
}

// MARK: Nachoify Foundation

typealias BestVoid = Void
typealias BestInt = Int
extension Int: Nacho, Tasteless {
  var tasteless: Int { return self }
  var nacho: Int { return self }
}
typealias BestDouble = Double
extension Double: Nacho, Tasteless {
  var tasteless: Double { return self }
  var nacho: Double { return self }
}
typealias BestString = String
extension String: Nacho, Tasteless {
  var tasteless: String { return self }
  var nacho: String { return self }
}
typealias BestBool = Bool
extension Bool: Nacho, Tasteless {
  var tasteless: Bool { return self }
  var nacho: Bool { return self }
}
typealias BestData = Data
extension Data: Nacho, Tasteless {
  var tasteless: Data { return self }
  var nacho: Data { return self }
}
typealias BestDate = Date
extension Date: Nacho, Tasteless {
  var tasteless: Date { return self }
  var nacho: Date { return self }
}



////////////////////////////////////////////////
// MARK: - Address

internal struct BestAddress: Nacho {
  let tasteless: Address
  fileprivate init(tasteless: Address) { self.tasteless = tasteless }

  // MARK: Typealiases	

  // MARK: Methods

  // MARK: Variables
  var bestStreet: String {
    get { return tasteless.street }
  }
  var bestZipcode: String {
    get { return tasteless.zipcode }
  }
}

extension Address: Tasteless {
	var nacho: BestAddress { return BestAddress(tasteless: self) }
}

////////////////////////////////////////////////
// MARK: - Dog

internal class BestDog: Nacho {
  let tasteless: Dog
  fileprivate init(tasteless: Dog) { self.tasteless = tasteless }

  // MARK: Typealiases	

  // MARK: Methods
  internal init(bestNickname nickname: BestString)  {
    self.tasteless = Dog(nickname: nickname)
  }
  internal func bestBark(bestTimes times: BestInt) -> BestVoid {
    let ret: BestVoid = tasteless.bark(times: times)
    return ret
  }

  // MARK: Variables
  var bestNickname: String {
    get { return tasteless.nickname }
  }
}

extension Dog: Tasteless {
	var nacho: BestDog { return BestDog(tasteless: self) }
}

////////////////////////////////////////////////
// MARK: - Person

internal class BestPerson: Nacho {
  let tasteless: Person
  fileprivate init(tasteless: Person) { self.tasteless = tasteless }

  // MARK: Typealiases	

  // MARK: Methods
  internal init(bestFirstName firstName: BestString, bestLastName lastName: BestString)  {
    self.tasteless = Person(firstName: firstName, lastName: lastName)
  }
  internal func bestCallDog(bestMakeItBark makeItBark: BestBool) -> BestBool {
    let ret: BestBool = tasteless.callDog(makeItBark: makeItBark)
    return ret.nacho
  }

  // MARK: Variables
  var bestFirstName: String {
    get { return tasteless.firstName }
  }
  var bestLastName: String {
    get { return tasteless.lastName }
  }
  var bestDob: Date? {
    get { return tasteless.dob }
    set { tasteless.dob = newValue }
  }
  var bestAddress: Address? {
    get { return tasteless.address }
    set { tasteless.address = newValue }
  }
  var bestDog: Dog? {
    get { return tasteless.dog }
    set { tasteless.dog = newValue }
  }
}

extension Person: Tasteless {
	var nacho: BestPerson { return BestPerson(tasteless: self) }
}
