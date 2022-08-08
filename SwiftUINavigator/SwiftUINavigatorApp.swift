// Created 8/7/22

import Home
import Login
import SwiftUI
import Navigator
import Registration

@main
struct SwiftUINavigatorApp: App {
    @ObservedObject private var navigator = Navigator()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigator.path) {
                LoginViewFactory.view(for: .emailLogin)
                    .navigationStackManaging()
            }
            .environmentObject(navigator)
        }
    }
}

extension View {
    func navigationStackManaging() -> some View {
        self
            .navigationDestination(for: HomeDestination.self) {
                HomeViewFactory.view(for: $0)
            }
            .navigationDestination(for: RegistrationDestination.self) {
                RegistrationViewFactory.view(for: $0)
            }
            .navigationDestination(for: LoginDestination.self) {
                LoginViewFactory.view(for: $0)
            }
    }
}
