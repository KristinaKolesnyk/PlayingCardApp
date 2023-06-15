//
//  PlayingCardAppApp.swift
//  PlayingCardApp
//
//  Created by Kristina on 15/06/2023.
//

import SwiftUI

@main
struct PlayingCardAppApp: App {
    @State var currentScreen = CurrentScreen.InitializationScreen
    
    enum CurrentScreen {
        case InitializationScreen
        case Playing
        case Score
    }
    var body: some Scene {
        WindowGroup {
            
            switch currentScreen {
            case .InitializationScreen:
                InitializationView(dispalyingCurApp: $currentScreen)
                
            case .Playing:
                PlayingView (dispalyingCurApp: $currentScreen)
                
            case .Score:
                ScoreView(dispalyingCurApp: $currentScreen)
                
            }
            
           
        }
    }
}
