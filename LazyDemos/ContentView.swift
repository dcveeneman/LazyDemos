//
//  ContentView.swift
//  LazyDemos
//
//  Created by David Veeneman on 11/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var columnWidths = [
        GridItem(.fixed(100)),
        GridItem()
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(columns: columnWidths) {
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

