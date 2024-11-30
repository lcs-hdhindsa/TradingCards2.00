//
//  PlayerTabView.swift
//  TradingCards2.0
//
//  Created by Harshan Dhindsa on 2024-11-30.
//

import SwiftUI

struct PlayersTabView: View {
    
    let players = [
        Player(name: "LeBron James", position: "Forward", shoots: "Right", team: "Lakers", number: 23, imageName: "lebron", teamColor: .yellow,imageTeam: "lakers"),
        Player(name: "Stephen Curry", position: "Guard", shoots: "Right", team: "Warriors", number: 30, imageName: "curry", teamColor: .blue,imageTeam: "warriors"),
        Player(name: "Giannis Antetokounmpo", position: "Forward", shoots: "Right", team: "Bucks", number: 34, imageName: "giannis", teamColor: .green,imageTeam: "bucks")
    ]
    
    var body: some View {
           TabView {
               ForEach(players, id: \.name) { player in
                   PlayerCardView(player: player)
                       .background(player.teamColor)
                       .ignoresSafeArea()
               }
           }
           .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
       }
   }
#Preview {
    PlayersTabView()
}




