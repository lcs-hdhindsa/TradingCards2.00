//
//  Player.swift
//  TradingCards2.0
//
//  Created by Harshan Dhindsa on 2024-11-30.
//

import SwiftUI

struct Player: Identifiable {
    
    let id = UUID()
    let name: String
    let position: String
    let shoots: String
    let team: String
    let number: Int
    let imageName: String
    let teamColor: Color
}

let player_1 = Player(name: "Lebron James", position: "Forward", shoots: "Right", team: "Los Angeles Lakers", number: 23, imageName: "lebron" , teamColor: .purple)
let player_2 = Player(name: "Stephen Curry", position: "guard", shoots: "Right", team: "Golden State Warriors", number: 30, imageName: "stephen" , teamColor: .blue)
let player_3 = Player(name: "Giannis Antetokounmpo", position: "Forward", shoots: "Right", team: "Milwaukee Bucks", number: 21, imageName: "giannis" , teamColor: .green)

let players = [
    player_1,
    player_2,
    player_3
]
