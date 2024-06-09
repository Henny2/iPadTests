//
//  ContentView.swift
//  iPadTests
//
//  Created by Henrieke Baunack on 6/9/24.
//

import SwiftUI

struct User : Identifiable {
    var id = "Taylor Swift"
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all), preferredCompactColumn: .constant(.content)){
            VStack{
                NavigationLink("Primary"){
                    Color.green
                }
                
                Button("Tap me"){
                    selectedUser = User()
                    isShowingUser = true
                }
                
                // automatic unwrpapping of optionals using alerts and sheets
//                .alert("welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
//                    Button(user.id) {}
//                }
                .sheet(item: $selectedUser) { user in
                    Text(user.id)
                    // first value is the default, but by allowing large as well, the user can decide to enlarge it 
                        .presentationDetents([.medium, .large])
                }
                
            }
        } detail: {
            Text("Content")
        }.navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    ContentView()
}
