//
//  GroupViewExamples.swift
//  iPadTests
//
//  Created by Henrieke Baunack on 6/9/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group{
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Liko")
        }.font(.title)
    }
}

struct GroupViewExamples: View {
    @State private var layoutVertical = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        VStack{
            Button{
                layoutVertical.toggle()
            } label: {
                if layoutVertical {
                    VStack{
                        UserView()
                    }
                } else {
                    HStack {
                        UserView()
                    }
                }
                
            }
            if horizontalSizeClass == .compact {
                VStack(content: UserView.init)
            } else {
                HStack(content: UserView.init)
            }
        }
    }
}

#Preview {
    GroupViewExamples()
}
