import Foundation
let b: [UInt8] = Array(try! FileHandle.standardInput.readToEnd()!)
var (s,l,r,t) = ("",0,0,0)
for value in b {
    if value == 10 {
        if t != 0 { s += "\(l+r)\n" }
        (l,r,t) = (0,0,0)
    } else {
        if value == 32 {
            t = l
        } else {
            let i = Int(value-48)
            t == 0 ? (l = l * 10 + i) : (r = r * 10 + i)
        }
    }
}
print(s)