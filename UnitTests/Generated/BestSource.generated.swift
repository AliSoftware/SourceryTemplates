// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

protocol Tasteless {
  associatedtype NachoType
  var butBetter: NachoType { get }
}
protocol Nacho {
  associatedtype TastelessType
  var tasteless: TastelessType { get }
}

// MARK: Nacho-ify Foundation

typealias BestVoid = Void
typealias BestInt = Int
extension Int: Nacho, Tasteless {
  var tasteless: Int { return self }
  var butBetter: Int { return self }
}
typealias BestDouble = Double
extension Double: Nacho, Tasteless {
  var tasteless: Double { return self }
  var butBetter: Double { return self }
}
typealias BestString = String
extension String: Nacho, Tasteless {
  var tasteless: String { return self }
  var butBetter: String { return self }
}
typealias BestBool = Bool
extension Bool: Nacho, Tasteless {
  var tasteless: Bool { return self }
  var butBetter: Bool { return self }
}
typealias BestData = Data
extension Data: Nacho, Tasteless {
  var tasteless: Data { return self }
  var butBetter: Data { return self }
}
typealias BestDate = Date
extension Date: Nacho, Tasteless {
  var tasteless: Date { return self }
  var butBetter: Date { return self }
}



////////////////////////////////////////////////
// MARK: - Address

internal struct BestAddress: Nacho {
  let tasteless: Address
  init(tasteless: Address) { self.tasteless = tasteless }

  // MARK: Typealiases	

  // MARK: Methods
  internal init(bestStreet street: BestString, bestZipcode zipcode: BestString)  {
    self.tasteless = Address(street: street, zipcode: zipcode)
  }

  // MARK: Variables
  var bestStreet: BestString {
    get { return tasteless.street.butBetter }
  }
  var bestZipcode: BestString {
    get { return tasteless.zipcode.butBetter }
  }
}

extension Address: Tasteless {
	var butBetter: BestAddress { return BestAddress(tasteless: self) }
}

////////////////////////////////////////////////
// MARK: - Dog

internal class BestDog: Nacho {
  let tasteless: Dog
  init(tasteless: Dog) { self.tasteless = tasteless }

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
  var bestNickname: BestString {
    get { return tasteless.nickname.butBetter }
  }
}

extension Dog: Tasteless {
	var butBetter: BestDog { return BestDog(tasteless: self) }
}

////////////////////////////////////////////////
// MARK: - Person

internal class BestPerson: Nacho {
  let tasteless: Person
  init(tasteless: Person) { self.tasteless = tasteless }

  // MARK: Typealiases	

  // MARK: Methods
  internal init(bestFirstName firstName: BestString, bestLastName lastName: BestString)  {
    self.tasteless = Person(firstName: firstName, lastName: lastName)
  }
  internal func bestCallDog(bestMakeItBark makeItBark: BestBool) -> BestBool {
    let ret: BestBool = tasteless.callDog(makeItBark: makeItBark)
    return ret.butBetter
  }

  // MARK: Variables
  var bestFirstName: BestString {
    get { return tasteless.firstName.butBetter }
  }
  var bestLastName: BestString {
    get { return tasteless.lastName.butBetter }
  }
  var bestDob: BestDate? {
    get { return tasteless.dob?.butBetter }
    set { tasteless.dob = newValue?.tasteless }
  }
  var bestAddress: BestAddress? {
    get { return tasteless.address?.butBetter }
    set { tasteless.address = newValue?.tasteless }
  }
  var bestDog: BestDog? {
    get { return tasteless.dog?.butBetter }
    set { tasteless.dog = newValue?.tasteless }
  }
}

extension Person: Tasteless {
	var butBetter: BestPerson { return BestPerson(tasteless: self) }
}
