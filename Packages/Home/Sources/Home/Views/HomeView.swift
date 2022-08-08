// Created 8/7/22

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Hello, Home!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            // TODO: Go to Settings
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
