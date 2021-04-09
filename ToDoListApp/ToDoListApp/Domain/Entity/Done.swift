//
//  Done.swift
//  ToDoListApp
//
//  Created by zombietux on 2021/04/08.
//

import Foundation

class Done: BoardManageable {
    private var board: Board
    
    init(board: Board) {
        self.board = board
    }
    
    func getBoard() -> Board {
        return self.board
    }
    
    func count() -> Int {
        return self.board.count()
    }
    
    func forEachCards(handler: (CardManageable) -> ()) {
        board.forEachCards { card in
            handler(card)
        }
    }
    
    func appendCard(_ card: CardManageable) {
        self.board.appendCard(card)
    }
    
    func getTitle() -> String {
        return "완료한 일"
    }
}
