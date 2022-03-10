import Foundation

func run(input: String) -> Bool {
    //TODO: You can code here
    return false
}

func test(_ input: String,result: Bool) {
    if run(input: input) != result {
        print("\(input) validation failed")
    }
}

test("()",result: true)
test("()[]{}",result: true)
test("(]",result: false)
test("([)]",result: false)
test("{[]}",result: true)
