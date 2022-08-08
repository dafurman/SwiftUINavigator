// Created 8/7/22

import SwiftUI
import Navigator

struct UserRegistrationView: View {
    @EnvironmentObject private var navigator: Navigator

    var body: some View {
        VStack {
            Text("Hello, New User!")
            Button("Go to Home") {
                navigator.navigate(to: HomeDestination.home)
            }
        }
    }
}

struct UserRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        UserRegistrationView()
    }
}
