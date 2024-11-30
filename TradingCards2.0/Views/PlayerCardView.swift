//
//  PlayerCardView.swift
//  TradingCards2.0
//
//  Created by Harshan Dhindsa on 2024-11-30.
//

import SwiftUI

struct PlayerCardView: View {
    
let player: Player

var body: some View {
            
ZStack {
                
// Background court design
                
LinearGradient(
    colors: [ .white , .black],
    startPoint: .topLeading,
    endPoint: .bottomTrailing
    )

VStack(spacing: 20) {

// Player's name

Text(player.name)
    .font(.largeTitle)
    .bold()
    .foregroundColor(.white)
    .padding(.top, 20)

// Player's image
 
    
Image(player.imageName)
    .resizable()
    .scaledToFit()
    .frame(width: 180, height: 180)
    .clipShape(Circle())
    .overlay(Circle()
    .stroke(Color.white, lineWidth: 4))
    .shadow(radius: 8)

// Player's details
 
    
VStack(spacing: 10) {Text("Team: \(player.team)")
    .font(.title2)
    .bold()
    .foregroundColor(.white)

 Text("Position: \(player.position)")
    .font(.title3)
    .foregroundColor(.white)

Text("Jersey Number: #\(player.number)")
    .font(.title3)
    .foregroundColor(.white)

Text("Shoots: \(player.shoots)")
    .font(.title3)
    .foregroundColor(.white)
   }
    .padding()

// Basketball hoop or other theme-specific icon

    
Image(systemName: "basketball.fill")
    .resizable()
    .scaledToFit()
    .frame(width: 50, height: 50)
    .foregroundColor(.white)

                    Spacer()
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.orange)
                        .shadow(radius: 10)
                        .padding(10)
                )
            }
        }
    }


#Preview {
    PlayerCardView(player: player_1)
}
