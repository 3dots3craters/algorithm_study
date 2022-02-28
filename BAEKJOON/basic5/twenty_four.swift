import Foundation

let currTimeArr = readLine()!.split(separator: ":").map{Int($0)!}
let startTimeArr = readLine()!.split(separator: ":").map{Int($0)!}

let currTime = currTimeArr[0] * 3600 + currTimeArr[1] * 60 + currTimeArr[2]
let startTime = startTimeArr[0] * 3600 + startTimeArr[1] * 60 + startTimeArr[2]

let leftTime = startTime > currTime ? startTime - currTime : 3600 * 24 + startTime - currTime

var hour = String(leftTime / 3600)
var min = String((leftTime % 3600) / 60)
var sec = String((leftTime % 3600) % 60)

hour = hour.count < 2 ? "0" + hour : hour
min = min.count < 2 ? "0" + min : min
sec = sec.count < 2 ? "0" + sec : sec

print("\(hour):\(min):\(sec)")