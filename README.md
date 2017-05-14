# SourceryTemplates

This repository contains some templates to use for Code Generation in Swift with [Sourcery](http://github.com/krzysztofzablocki/Sourcery).

## Type Erasure

### Usage

* Annotate the protocol to type-erase using `// sourcery: TypeErase = X` where `X` is the `associatedtype` to erase
* Use the template in [`TypeErasure/TypeErase.stencil`](https://github.com/AliSoftware/SourceryTemplates/blob/master/TypeErasure/TypeErase.stencil) with [Sourcery](http://github.com/krzysztofzablocki/Sourcery) to generate Type-Erased code for this annotated protocol(s)
* Add the generated `TypeErase.generated.swift` file to your Xcode project
* Profit!

### Examples

You can find some examples in the [`Examples`](https://github.com/AliSoftware/SourceryTemplates/tree/master/TypeErasure/Examples) folder in the repo, like those:

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

Using the `TypeErase.stencil` template, running Sourcery on those source files will then auto-generate the code that you can see [in this file](https://github.com/AliSoftware/SourceryTemplates/blob/master/TypeErasure/Examples/Generated/TypeErase.generated.swift). Magic! 🎩✨

### Status

This is a first draft of the template, so please don't hesitate to improve it.

I haven't tested a lot of real-world use cases yet so some corner cases are probably missing but feel free to submit a PR to fix them!

### Inspiration

The template generates the same code structure as the one explained in [this BigNerdRanch article](https://www.bignerdranch.com/blog/breaking-down-type-erasures-in-swift/) that inspired me to come up with a working template.

You can also find more information about Type-Erasure by watching [Gwendolyn's talk at Try! Swift](https://news.realm.io/news/tryswift-gwendolyn-weston-type-erasure/) — from which I borrowed the Pokemon examples to test that template.

## Other templates

This repo only contains the Type-Erasure template for now, but I hope to add more templates in this repo in the future. Some ideas that comes to mind are templates to generate Lenses, Decorators, etc.

You can also find a template by **@Liquidsoul** [on his own repo](https://github.com/Liquidsoul/Sourcery-AutoJSONSerializable) to auto-generate code for JSON serialization & deserialization.
