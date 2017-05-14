# SourceryTemplates

This repository contains some templates to use for Code Generation in Swift with [Sourcery](http://github.com/krzysztofzablocki/Sourcery).

## Type Erasure

### Usage

* Annotate the protocol to type-erase using `// sourcery: TypeErase = TheAssociatedTypeToErase`
* Use Sourcery with the `TypeErase.stencil` template to generate Type-Erased code for this protocol
* Add the generated `TypeErase.generated.swift` file to your Xcode project
* Profit!

### Examples

```swift
// sourcery: TypeErase = PokemonType
protocol Pokemon {
  associatedtype PokemonType
  func attack(move: PokemonType)
}
```

```swift
// sourcery: TypeErase = Model
protocol Row {
  associatedtype Model

  var sizeLabelText: String { get set }

  func configure(model: Model)
}
```

### Draft Version

This is a first draft of the template, so please don't hesitate to improve it.

_I haven't tested a lot of real-world use cases yet so some corner cases are probably missing but feel free to submit a PR to fix them!_
