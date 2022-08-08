// Created 8/7/22

import Navigator
import SwiftUI

public enum RegistrationViewFactory {
    @ViewBuilder
    public static func view(for destination: RegistrationDestination) -> some View {
        switch destination {
        case .userRegistration:
            UserRegistrationView()
        }
    }
}
