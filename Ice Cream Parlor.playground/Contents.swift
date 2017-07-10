import Foundation;


let count = Int(readLine()!)!

for _ in 1...count {
    let money = Int(readLine()!)!
    let n = Int(readLine()!)!
    let icecreams = readLine()!.components(separatedBy:" ").map{ Int($0)! }
    var result = ""
    for i in 0..<icecreams.count {
        for index in i..<icecreams.count {
            if index < icecreams.count - 1 {
                let num1 = icecreams[i]
                let num2 = icecreams[index + 1]
                
                if (num1 + num2) == money {
                    result = "\(i + 1) \(index + 2)"
                    break
                }
            }
        }
    }
    print(result)
}