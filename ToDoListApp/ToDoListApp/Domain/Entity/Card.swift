//
//  Card.swift
//  ToDoListApp
//
//  Created by zombietux on 2021/04/06.
//

import Foundation

class Board {
    private var cards: [CardManageable]
    
    init(cards: [CardManageable]) {
        self.cards = cards
    }
    
    func count() -> Int {
        return self.cards.count
    }
    
    func forEachCards(handler: (CardManageable) -> ()) {
        cards.forEach { card in
            handler(card)
        }
    }
    
    func getCards() -> [CardManageable] {
        return self.cards
    }
    
    func appendCard(_ card: CardManageable) {
        self.cards.append(card)
    }
}

class Card: CardManageable, Decodable {
    
    private var id: String
    private var title: String
    private var contents: String
    private var status: String
    private var createdTime: String
    private var columndId: Int
    
    init(id: String, title: String, contents: String, status: String, createdTime: String, columndId: Int) {
        self.id = id
        self.title = title
        self.contents = contents
        self.status = status
        self.createdTime = createdTime
        self.columndId = columndId
    }
    
    convenience init() {
        let id = ""
        let title = ""
        let contents = ""
        let status = ""
        let createdTime = ""
        let columndId = Int()
        self.init(id: id, title: title, contents: contents, status: status, createdTime: createdTime, columndId: columndId)
    }
    
    func add() {
    }
    
    func edit() {
        
    }
    
    func delete() {
        
    }
    
    func goToDone() {
        
    }
    
    func getTitle() -> String {
        return self.title
    }
    
    func getContents() -> String {
        return self.contents
    }
}
