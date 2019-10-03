public enum Rank: Int {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

public enum Suit: String {
    case spades, hearts, diamonds, clubs
}

public struct PlayingCard {
    let rank: Rank
    let suit: Suit
}
