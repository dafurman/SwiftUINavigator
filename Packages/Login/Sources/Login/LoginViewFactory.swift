// Created 8/7/22

import Navigator
import SwiftUI

public enum LoginViewFactory {
    @ViewBuilder
    public static func view(for destination: LoginDestination) -> some View {
        switch destination {
        case .emailLogin:
            EmailLoginView()
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}
