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
    private var currentIndex = 0
    public init() {
        deck = Deck(cards: Suit.allCases.flatMap { suit in
            Rank.allCases.map { rank in
                Card(rank: rank, suit: suit)
            }
        })
        shuffle()
    }

    public func nextCard() -> Card {
        let card = deck.cards[currentIndex]
        currentIndex += 1
        return card
    }

    public func shuffle() {
        deck.cards.shuffle()
    }
}
