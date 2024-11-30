//
//  PlayerTabView.swift
//  TradingCards2.0
//
//  Created by Harshan Dhindsa on 2024-11-30.
//

import SwiftUI

struct PlayerTabView: View {
    
    var body: some View {
        
        TabView {
            ForEach(players) { currentplayer in PlayerCardView(player: currentplayer)
            }
        }
      
        .tabViewStyle(.page(indexDisplayMode: .never))
        .persistentSystemOverlays(.hidden)
        
          PlayerTabView()
        }
    }


