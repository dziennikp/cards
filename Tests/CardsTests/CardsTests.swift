@testable import Cards
import XCTest

final class CardsTests: XCTestCase {
    func testCardsGenerating() {
        let deckManager = DeckManager()
        XCTAssert(deckManager.deck.cards.count == 52)
    }

    static var allTests = [
        ("testCardsGenerating", testCardsGenerating),
    ]
}
