import Foundation

func isPossible(_ firstTruck: (weight:Int, second:Int), _ onBridge: [(weight:Int, second:Int)], with bridge_length: Int, and maxWeight: Int) -> Bool {

    var onBridgeWeight = 0
    for i in 0..<onBridge.count {
        onBridgeWeight += onBridge[i].weight
    }
    return (onBridge.count < bridge_length) && (onBridgeWeight + firstTruck.weight <= maxWeight)
}

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {

    var answer = 1
    var trucks: [(weight:Int, second:Int)] = truck_weights.map{(weight: $0, second: 0)}
    let truckCount = trucks.count
    var onBridge = [(weight:Int, second:Int)]()
    var offBridge = [(weight:Int, second:Int)]()

    while offBridge.count < truckCount {
        if !onBridge.isEmpty && onBridge.first!.second == bridge_length {
            offBridge.append(onBridge.removeFirst())
        } else {
            if !trucks.isEmpty && isPossible(trucks.first!, onBridge, with: bridge_length, and: weight) {
                onBridge.append(trucks.removeFirst())
                answer += 1
                onBridge = onBridge.map{(weight: $0.weight, second: $0.second + 1)}
            } else {
                let time = bridge_length - onBridge.first!.second
                answer += time
                onBridge = onBridge.map{(weight: $0.weight, second: $0.second + time)}
            }
        }
    }
    
    return answer
}

let bridge_length = 100
let weight = 100
let truck_weights = [10]

print(solution(bridge_length, weight, truck_weights))