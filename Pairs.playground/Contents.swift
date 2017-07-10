import Foundation;

// Enter your code here

let array = readLine()!.components(separatedBy:" ").map { Int($0)! }
let n = array[0]
let k = array[1]

let numbers = readLine()!.components(separatedBy:" ").map { Int($0)! }.sorted()

var i = 0
var j = 0
var count = 0

while j < n {
    
    var diff = numbers[j] - numbers[i]
    
    if diff == k {
        count += 1
        j += 1
        
    } else if diff > k {
        i += 1
        
    } else if diff < k {
        j += 1
        
    }
}

print(count)

