// Created 8/7/22

import Foundation

public protocol Destination: Hashable, Identifiable, Equatable, CaseIterable {
    var rawValue: String { get }
}

public enum HomeDestination: String, Destination, Identifiable {
    case home
    case settings
    public var id: String { rawValue }
}

public enum LoginDestination: String, Destination, Identifiable {
    case emailLogin
    case forgotPassword
    public var id: String { rawValue }
}

public enum RegistrationDestination: String, Destination, Identifiable {
    case userRegistration
    public var id: String { rawValue }
}

public enum ModuleDestination {
    case home(HomeDestination)
    case login(LoginDestination)
    case registration(RegistrationDestination)
}
