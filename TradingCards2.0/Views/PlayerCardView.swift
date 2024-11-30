//
//  PlayerCardView.swift
//  TradingCards2.0
//
//  Created by Harshan Dhindsa on 2024-11-30.
//

import SwiftUI

import SwiftUI

struct PlayerCardView: View {
    
    let player: Player
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [player.teamColor, .black]),
                   startPoint: .top,
                   endPoint: .bottom
               )
               .ignoresSafeArea()
            
            VStack(spacing: 20) {
Text(player.name)
    .font(.largeTitle)
    .bold()
    .foregroundColor(.black)
    .padding()

Image(player.imageName)
    .resizable()
    .scaledToFit()
    .frame(width: 200, height: 160)
    .clipShape(Circle())
    .overlay(Circle().stroke(Color.white, lineWidth: 4))
    .shadow(radius: 8)

Text("Position: \(player.position)")
    .font(.title2)
    .foregroundColor(.black)

Text("Team: \(player.team)")
    .font(.title2)
    .foregroundColor(.black)

Text("Jersey Number: #\(player.number)")
    .font(.title2)
    .foregroundColor(.black)

Image(player.imageTeam)
    .resizable()
    .scaledToFit()
    .frame(width: 80, height: 80)
    .foregroundColor(.black)
}
.padding()
.background(RoundedRectangle(cornerRadius: 10)
.fill(Color.white)
.shadow(radius: 10)
                          )
                      }
                  }
              }
#Preview {
    PlayerCardView(player : player_1)
}
