//
//  ScoreView.swift
//  PlayingCardApp
//
//  Created by Kristina on 15/06/2023.
//

import SwiftUI

struct ScoreView: View {
    @Binding var dispalyingCurApp: PlayingCardAppApp.CurrentScreen
    
    var body: some View {
        
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    VStack{
                        Spacer()
                        Text("Player").font(.largeTitle).fontWeight(.black).padding(.bottom, 5.0)
                        Text("0")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }.foregroundColor(Color.lightColor)
                    
                    Spacer()
                    Button{
                        dispalyingCurApp = .InitializationScreen
                    }
                    label: {
                        Image("restart")
                    }
                    
                    Spacer()
                }
            }
        }
    }




struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView( dispalyingCurApp: .constant(.Score))
    }
}
