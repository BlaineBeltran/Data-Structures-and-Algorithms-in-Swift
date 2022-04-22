import UIKit

/*:
 # Section: Stacks
 
 The main goal of building a stack is to enfore how you access data.
 
 Stacks have the following two main operations:
- Push: Adding an element to the top of the stack
- Pop: Removing an element from the top of the stack
 
 Stacks are also a **LIFO (last-in-first-out)** data structure. This means that the last element that was add is the first element to go.
 
 Implementation
 */
public struct Stack<Element> {
    
    private var storage = [Element]()
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        return storage.last
    }
}

extension Stack: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

/*
 Creating a stack without an array -> Update custom init for this to work
 
 var stack = Stack<Int>()
 stack.push(1)
 stack.push(2)
 stack.push(3)
 stack.push(4)
 stack.push(5)

 print(stack)

 if let poppedElement = stack.pop() {
     assert(5 == poppedElement)
     print("Popped: \(poppedElement)")
 }

 */

// Creating a stack from an array
var numbers = [1, 2, 3, 4, 5]
var stack = Stack(numbers)
print(stack)
if let poppedElement = stack.pop() {
    assert(5 == poppedElement)
    print("Popped: \(poppedElement)")
}

// Creating a stack from an array literal
var stackTwo: Stack = [1, 2, 3, 4, 5, 6]
print(stack)
if let poppedElementTwo = stackTwo.pop() {
    assert(6 == poppedElementTwo)
    print("Popped: \(poppedElementTwo)")
}







