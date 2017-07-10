import Foundation;

// Enter your code here

func splitToIntegers(_ s: String, count: Int) -> [Int] {
    var result: [Int] = []
    result.reserveCapacity(count)
    var n = 0
    let scanner = Scanner(string: s)
    while scanner.scanInt(&n) {
        result.append(n)
    }
    return result
}


let n = Int(readLine()!)!
let a = splitToIntegers(readLine()!, count: n)

let m = Int(readLine()!)!
let b = splitToIntegers(readLine()!, count: m)

var result = Set<Int>()

func missingNumbers(_ a: [Int], _ b:[Int]) -> String {
    
    let setA = Set(a)
    let setB = Set(b)
    
    // any number in one list and not the other
    let difference = setA.symmetricDifference(setB)
    result.union(difference)
    
    // detect count differences
    let nsSetA = NSCountedSet(array: a)
    let nsSetB = NSCountedSet(array: b)
    
    for num in nsSetA {
        if nsSetA.count(for: num) != nsSetB.count(for: num) {
            result.insert(num as! Int)
        }
    }
    
    return Array(result).map({
        String($0)
    }).sorted().joined(separator: " ")
}

print(missingNumbers(a, b))

