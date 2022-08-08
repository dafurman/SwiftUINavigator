// Created 8/7/22

import SwiftUI
import Navigator

struct EmailLoginView: View {
    @EnvironmentObject private var navigator: Navigator

    var body: some View {
        VStack {
            Text("Hello, Email Login!")
            Button("Forgot Password?") {
                navigator.navigate(to: LoginDestination.forgotPassword)
            }
            Button("Login") {
                navigator.navigate(to: HomeDestination.home)
            }
        }
    }
}

struct EmailLoginView_Previews: PreviewProvider {
    static var previews: some View {
        EmailLoginView()
    }
}
