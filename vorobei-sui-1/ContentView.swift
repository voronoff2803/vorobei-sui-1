//
//  ContentView.swift
//  vorobei-sui-1
//
//  Created by Alexey Voronov on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            ZStack {
                ScrollView() {
                    VStack() {
                        ForEach(0..<100) {_ in
                            Text("Item")
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .safeAreaInset(edge: .bottom) {
                    Color.red
                        .frame(height: 50)
                        .opacity(0.5)
                }
            }
            .tabItem { Label("Menu", systemImage: "list.dash") }
        }
    }
}

#Preview {
    ContentView()
}
