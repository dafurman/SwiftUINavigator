// Created 8/7/22

import Navigator
import SwiftUI

public enum HomeViewFactory {
    @ViewBuilder
    public static func view(for destination: HomeDestination) -> some View {
        switch destination {
        case .home:
            HomeView()
        case .settings:
            SettingsView()
        }
    }
}
