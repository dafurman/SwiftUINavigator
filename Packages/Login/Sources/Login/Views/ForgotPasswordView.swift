// Created 8/7/22

import SwiftUI
import Navigator

struct ForgotPasswordView: View {
    @EnvironmentObject private var navigator: Navigator

    var body: some View {
        VStack {
            Text("Hello, World!")
            Button("Go to Email Login") {
                navigator.pop()
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
