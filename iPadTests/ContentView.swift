//
//  ContentView.swift
//  iPadTests
//
//  Created by Henrieke Baunack on 6/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all), preferredCompactColumn: .constant(.detail)){
            NavigationLink("Primary"){
                Color.green
            }
        } detail: {
            Text("Content")
        }.navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}
