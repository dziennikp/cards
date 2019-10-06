public enum Rank: Int, CaseIterable {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

public enum Suit: String, CaseIterable {
    case spades, hearts, diamonds, clubs
}

public struct Card {
    let rank: Rank
    let suit: Suit
}
