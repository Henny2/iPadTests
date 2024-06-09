//
//  SearchView.swift
//  iPadTests
//
//  Created by Henrieke Baunack on 6/9/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    let allNames = ["Henny", "Rick", "Joe", "Jenny"]
    var filteredNames: [String]{
        if searchText.isEmpty {
            return allNames
        } else {
            return allNames.filter { name in
                name.localizedStandardContains(searchText)
            }
        }
    }
    var body: some View {
        NavigationStack {
            VStack{
                Text("Searching for: \(searchText)")
                    .searchable(text: $searchText, prompt: "Look for something")
                    .navigationTitle("Searching ")
                
                List(filteredNames, id: \.self){ name in
                        Text(name)
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
