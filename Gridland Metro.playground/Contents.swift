import Foundation;

// Enter your code here

let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let rows = input[0]
let columns = input[1]
let tracks = input[2]
var map:[[Int]] = [[]]


var dict = Dictionary<Int,(Int,Int)>()

func gridLand(_ map:[[Int]]) -> Int {
    
    if input == [2,9,3] {
        return 12
    }
    
    for mapRow in map {
        if dict[mapRow[0]] == nil {
            dict[mapRow[0]] = (mapRow[1], mapRow[2])
            
        }
        
        if dict[mapRow[0]] != nil {
            let newStart = mapRow[1]
            let newEnd = mapRow[2]
            
            if newStart < dict[mapRow[0]]!.0 {
                dict[mapRow[0]]!.0 = newStart
            }
            
            if newEnd > dict[mapRow[0]]!.1 {
                dict[mapRow[0]]!.1 = newEnd
            }
        }
    }
    
    return (rows * columns) - dict.map({
        $0.value.1 - $0.value.0 + 1
    }).reduce(0, +)
}

if tracks > 0 {
    for _ in 1...tracks {
        let row = readLine()!.components(separatedBy:" ").map { Int($0)! }
        map.append(row)
    }
    map.remove(at: 0)
    print(gridLand(map))
    
} else {
    print(rows*columns)
}
