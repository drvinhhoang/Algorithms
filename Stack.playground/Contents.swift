import UIKit
import XCTest

var greeting = "Hello, playground"

//example(of: "using a stack") {
//    var stack = Stack<Int>()
//    stack.push(1)
//    stack.push(2)
//    stack.push(3)
//    stack.push(4)
//    print(stack)
//
//    if let poppedElement = stack.pop() {
//        assert(4 == poppedElement)
//        print("popped: \(poppedElement)")
//        print(stack)
//    }
//}

//example(of: "initializing a stack from an array") {
//    let array = ["A", "B", "C", "D"]
//    var stack = Stack(array)
//    print(stack)
//    stack.pop()
//    print(stack)
//}

//example(of: "initializing a stack from an array literal") {
//    var stack: Stack = [1.0, 2.0, 3.0, 4.0]
//    print(stack)
//    stack.pop()
//}

example(of: "reverse an array") {
    let arr = [1,2,3,4]
    var stack: Stack = Stack(arr)
    while let value = stack.pop() {
        print(value)
    }
}


func checkBalanceParentheses(_ str: String) -> Bool {
    var stack = Stack<Character>()
    
    for char in str {
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

class MyTestCase: XCTestCase {
    func testBalanceParenthesesShouldTrue() {
        let str = "h((e))llo(world)()"
        XCTAssertTrue(checkBalanceParentheses(str))
    }
    
    func testBalanceParenthesesShouldFalse() {
        let str = "(hello world"
        XCTAssertFalse(checkBalanceParentheses(str))
    }
}

MyTestCase.defaultTestSuite.run()


