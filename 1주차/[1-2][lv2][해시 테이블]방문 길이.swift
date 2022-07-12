import Foundation

func solution(_ dirs:String) -> Int {
    var x = 5
    var y = 5
    var horRoad = Set<Int>() // 가로 10, 세로 11
    var verRoad = Set<Int>() // 가로 11, 세로 10
    for s in dirs {
        switch s {
        case "U":
            if y < 10 {
                y = y + 1
                verRoad.insert(x * 100 + y - 1)
            }
        case "D":
            if y > 0 {
                y = y - 1
                verRoad.insert(x * 100 + y)
            }
        case "R":
            if x < 10 {
                x = x + 1
                horRoad.insert((x - 1) * 100 + y)
            }
        case "L":
            if x > 0 {
                x = x - 1
                horRoad.insert(x * 100 + y)
            }
        default:
            break
        }
    }

    return horRoad.count + verRoad.count
}
