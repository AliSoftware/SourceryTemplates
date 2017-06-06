// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

protocol KeyPathSchema {
  static var schema: [PartialKeyPath<Self>] { get }
}

extension Point: KeyPathSchema, Hashable {
  static let schema: [PartialKeyPath<Point>] = [
  	\Point.x,	\Point.y,
  ]
}
extension Rect: KeyPathSchema, Hashable {
  static let schema: [PartialKeyPath<Rect>] = [
  	\Rect.origin,	\Rect.size,
  ]
}
extension Size: KeyPathSchema, Hashable {
  static let schema: [PartialKeyPath<Size>] = [
  	\Size.width,	\Size.height,
  ]
}

extension Hashable where Self: KeyPathSchema {
  static func ==(a: Self, b: Self) -> Bool {
    for key in Self.schema {
      guard let aValue = a[keyPath: key] as? AnyHashable,
        let bValue = b[keyPath: key] as? AnyHashable,
        aValue == bValue
        else {
          return false
      }
    }
    return true
  }

  var hashValue: Int {
    var hash = unsafeBitCast(Self.self, to: Int.self)
    for key in Self.schema {
      if let value = self[keyPath: key] as? AnyHashable {
        // You should use a real hash combining function here
        hash = hash &* 17 ^ value.hashValue
      }
    }
    return hash
  }
}