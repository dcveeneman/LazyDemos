//
//  ContentView.swift
//  LazyDemos
//
//  Created by David Veeneman on 11/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 5)], spacing: 5) {
                ForEach(0..<1000) {i in
                    RedAndCyanView()
                }
            }
        }
        .padding()
    }
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}

