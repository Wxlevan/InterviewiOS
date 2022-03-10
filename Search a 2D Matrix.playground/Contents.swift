import Foundation

func run(matrix:[[Int]],target: Int) -> Bool {
    return false
}

func test(matrix:[[Int]],target: Int,result: Bool) {
    if run(matrix: matrix, target: target) != result {
        print("\(matrix)")
    }
}

test(matrix: [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target: 3,result: true)
test(matrix: [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target: 13,result: false)
