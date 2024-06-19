//
//  main.swift
//  MTGA-stack-accelerator
//
//  Created by Miles Robertson on 6/19/24.
//

import Foundation

struct Card {
    var name = ""
    var action = ""
}

struct Stack {
    private var items: [Card] = []
    
    func peek() -> Card? {
//        guard let topElement = items.first else { fatalError("This stack is empty.") }
        let topElement = items.first
        return topElement
    }
    
    mutating func pop() -> Card {
        var top = items.removeFirst()
        print(top.name)
        if top.action == "push" {
            var Joker = Card(name: "Joker")
            self.push(Joker)
        }
        return top
    }
  
    mutating func push(_ element: Card) {
        items.insert(element, at: 0)
    }
}

var nameStack = Stack()
var Ace = Card(name: "A")
var King = Card(name: "K", action: "push")
var Queen = Card(name: "Q", action: "push")

nameStack.push(Ace)
nameStack.push(King)
nameStack.push(Queen)

print(nameStack)

// Pop until nameStack is empty
print()
while nameStack.peek() != nil {
    print(nameStack.pop())
}
