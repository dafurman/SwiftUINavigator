// Created 8/7/22

import SwiftUI
import Navigator

struct HomeView: View {
    @EnvironmentObject private var navigator: Navigator

    var body: some View {
        NavigationView {
            Text("Hello, Home!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            navigator.navigate(to: HomeDestination.settings)
                        } label: {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
