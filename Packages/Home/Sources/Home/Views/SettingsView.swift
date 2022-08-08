// Created 8/7/22

import SwiftUI
import Navigator

struct SettingsView: View {
    @EnvironmentObject private var navigator: Navigator

    var body: some View {
        Button("Log out") {
            navigator.navigate(to: LoginDestination.emailLogin)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
