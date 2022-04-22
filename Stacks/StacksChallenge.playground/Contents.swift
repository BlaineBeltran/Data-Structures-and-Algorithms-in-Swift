import UIKit

public struct Stack<Element> {
    
    private var storage = [Element]()
    
    public init() { }
    
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
/*
 Challenge # 1
 
 Create a function that uses a stack to print the contents of an array in reversed order.
 
 */

func reverseOrder<T>(_ array: [T]) {
    var stack = Stack<T>()
    
    for element in array {
        stack.push(element)
    }
    
    while let element = stack.pop() {
        print(element)
    }
}

var letters = ["H", "e", "l", "l", "o"]
//reverseOrder(letters)

/*
 Challenge # 2
 
 Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses
 in the string are balanced.
 
 */

func checkBalancedParentheses( _ array: String) -> Bool {
    
    var stack = Stack<Character>()
    
    for char in array {
        if char == "(" {
            stack.push(char)
        } else if char == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}

let testCaseOne = "h((e))llo(world)()"
let testCaseTwo = "(hello world"
print(checkBalancedParentheses(testCaseOne))
print(checkBalancedParentheses(testCaseTwo))

