// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// MARK: State

extension State {
    enum CaseName: String {
        case notLoaded
        case loading
        case loaded
        case error
    }
    var caseName: CaseName {
        switch self {
        case .notLoaded: return .notLoaded
        case .loading: return .loading
        case .loaded: return .loaded
        case .error: return .error
        }
    }
}

