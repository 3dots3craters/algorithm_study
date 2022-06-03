import Foundation

func findPrimeNumber(string: String, start: Int, set: inout Set<Int>, numbers: [Int], len: Int) {
    
    var string = string
    string += String(start)

    if len == string.count {
        set.insert(Int(string)!)
        return
    }

    for i in 0..<numbers.count {
        let newNumbers = Array(numbers[0..<i] + numbers[(i+1)...])
        findPrimeNumber(string: string, start: numbers[i], set: &set, numbers: newNumbers, len: len)
    }
}

func solution(_ numbers: String) -> Int {

    if numbers.count == 1 {
        return 1
    }

    var primeNumbers = Set<Int>()
    let numbers = Array(numbers).map{Int(String($0))!}
    for len in 1...numbers.count {
        for i in 0..<numbers.count {
            let newNumbers = Array(numbers[0..<i] + numbers[(i+1)...])
            findPrimeNumber(string: "", start: numbers[i], set: &primeNumbers, numbers: newNumbers, len: len)
        }
    }
    primeNumbers = primeNumbers.filter{
        if [2, 3, 5, 7].contains($0) {
            return true
        }
        if $0 < 2 {
            return false
        }
        for n in 1...($0/2) {
            if n > 1 && $0 % n == 0 {
                return false
            }
        }
        return true
    }

    return primeNumbers.count
}

let numbers = "011"
print(solution(numbers))