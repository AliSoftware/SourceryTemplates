// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



// MARK: - Type Eraser for Pokemon

private class _AnyPokemonBase<PokemonType>: Pokemon {
    init() {
        guard type(of: self) != _AnyPokemonBase.self else {
            fatalError("_AnyPokemonBase<PokemonType> instances can not be created; create a subclass instance instead")
        }
    }

    func attack(move: PokemonType) -> Void {
        fatalError("Must override")
    }

}

private final class _AnyPokemonBox<Concrete: Pokemon>: _AnyPokemonBase<Concrete.PokemonType> {
    var concrete: Concrete
    typealias PokemonType = Concrete.PokemonType

    init(_ concrete: Concrete) {
        self.concrete = concrete
    }

    override func attack(move: PokemonType) -> Void {
        return concrete.attack(move: move)
    }

}

final class AnyPokemon<PokemonType>: Pokemon {
    private let box: _AnyPokemonBase<PokemonType>

    init<Concrete: Pokemon>(_ concrete: Concrete) where Concrete.PokemonType == PokemonType {
        self.box = _AnyPokemonBox(concrete)
    }

    func attack(move: PokemonType) -> Void {
        return box.attack(move: move)
    }

}

// MARK: - Type Eraser for Row

private class _AnyRowBase<Model>: Row {
    init() {
        guard type(of: self) != _AnyRowBase.self else {
            fatalError("_AnyRowBase<Model> instances can not be created; create a subclass instance instead")
        }
    }

    func configure(model: Model) -> Void {
        fatalError("Must override")
    }

    var sizeLabelText: String {
        get { fatalError("Must override") }
        set { fatalError("Must override") }
    }
}

private final class _AnyRowBox<Concrete: Row>: _AnyRowBase<Concrete.Model> {
    var concrete: Concrete
    typealias Model = Concrete.Model

    init(_ concrete: Concrete) {
        self.concrete = concrete
    }

    override func configure(model: Model) -> Void {
        return concrete.configure(model: model)
    }

    override var sizeLabelText: String {
        get { return concrete.sizeLabelText }
        set { concrete.sizeLabelText = newValue }
    }
}

final class AnyRow<Model>: Row {
    private let box: _AnyRowBase<Model>

    init<Concrete: Row>(_ concrete: Concrete) where Concrete.Model == Model {
        self.box = _AnyRowBox(concrete)
    }

    func configure(model: Model) -> Void {
        return box.configure(model: model)
    }

    var sizeLabelText: String {
        get { return box.sizeLabelText }
        set { box.sizeLabelText = newValue }
    }
}
