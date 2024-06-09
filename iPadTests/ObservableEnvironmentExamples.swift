//
//  ObservableEnvironmentExamples.swift
//  iPadTests
//
//  Created by Henrieke Baunack on 6/9/24.
//

import SwiftUI

@Observable
class Player {
    var name  = "Unknown"
    var highScore = 0
}

struct HighScoreView : View {
//    instead of requiring it as an input
//    var player: Player
//    we read it from the environment
    @Environment(Player.self) var player
    var body: some View {
        Text("Your highscore is \(player.highScore)")
        
        // curernt issue with IOS17 is that you cannot bind to environment objects directly, you have to create a copy using @Bindable
        
        @Bindable var player = player
        Stepper("Your score:", value: $player.highScore)
    }
}

struct ObservableEnvironmentExamples: View {
    @State private var player = Player()
    var body: some View {
        VStack{
            Text("Welcome")
            // old way of hadning in the observable object
//            HighScoreView(player: player)
            // new way, we use the environment
            HighScoreView()
        }
        // we are injecting the player object into the environment so that it can  be read out in other places
        .environment(player)
    }
}

#Preview {
    ObservableEnvironmentExamples()
}
