//
//  Deck.swift
//
//
//  Created by Paweł Dziennik on 06/10/2019.
//

import Foundation

public struct Deck {
    var cards: [Card]
}

public class DeckManager {
    var deck: Deck

    init() {
        deck = Deck(cards: Suit.allCases.flatMap { suit in
            Rank.allCases.map { rank in
                Card(rank: rank, suit: suit)
            }
        })
    }
    
    func shuffle() {
        deck.cards.shuffle()
    }
}
