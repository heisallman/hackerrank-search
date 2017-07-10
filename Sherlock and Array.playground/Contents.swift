// Enter your code here. Read input from STDIN. Print output to STDOUT

import Foundation

let t = Int(readLine()!)!

func sherlockAndArray(_ input:[Int]) -> String {
    
    var i = 0
    var j = input.count - 1
    var sum = 0
    
    while (i != j) {
        if(sum >= 0) {
            sum -= input[j]
            j -= 1
            
        } else {
            sum += input[i]
            i += 1
        }
    }
    return sum == 0 ? "YES" : "NO"
}


for _ in 1...t {
    let n = Int(readLine()!)!
    let numbers = readLine()!.components(separatedBy:" ").map { Int($0)! }
    print(sherlockAndArray(numbers))
}
