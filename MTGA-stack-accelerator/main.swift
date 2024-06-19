//
//  main.swift
//  MTGA-stack-accelerator
//
//  Created by Miles Robertson on 6/19/24.
//

import Foundation

struct Stack {
    private var items: [String] = []
    
    func peek() -> String {
        guard let topElement = items.first else { fatalError("This stack is empty.") }
        return topElement
    }
    
    mutating func pop() -> String {
        return items.removeFirst()
    }
  
    mutating func push(_ element: String) {
        items.insert(element, at: 0)
    }
}

var nameStack = Stack()

nameStack.push("Caleb")
nameStack.push("Charles")
nameStack.push("Tina")

print(nameStack)
