//
//  main.swift
//  MTGA-stack-accelerator
//
//  Created by Miles Robertson on 6/19/24.
//

import Foundation

struct Card {
    var action = ""
}

struct Stack {
    private var items: [Card] = []
    
    func peek() -> Card {
        guard let topElement = items.first else { fatalError("This stack is empty.") }
        return topElement
    }
    
    mutating func pop() -> Card {
        var top = items.removeFirst()
        print(top.action)
        return top
    }
  
    mutating func push(_ element: Card) {
        items.insert(element, at: 0)
    }
}

var nameStack = Stack()
var Ace = Card(action: "A")
var King = Card(action: "K")
var Queen = Card(action: "Q")

nameStack.push(Ace)
nameStack.push(King)
nameStack.push(Queen)

print(nameStack.pop())
print(nameStack.pop())
print(nameStack.pop())

print(nameStack.peek())

print(nameStack)
