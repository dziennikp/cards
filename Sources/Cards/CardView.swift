//
//  CardView.swift
//  Cards
//
//  Created by Paweł Dziennik on 06/10/2019.
//

import SwiftUI

public struct CardView: View {
    public let card: Card

    public var body: some View {
        HStack {
            Text(card.suit.rawValue)
            Text(card.rank.label)
        }
    }

    public init(card: Card) {
        self.card = card
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(rank: .ace, suit: .spades))
    }
}
