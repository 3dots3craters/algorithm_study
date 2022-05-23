// read를 안 한 거 아닐까?

var answer = "";
let T = Int(readLine()!)!

for _ in 0..<T {
    let n = Int(readLine()!)!
    let students = readLine()!.split(separator: " ").map{Int(String($0))!}
    var studentsInTeam = Set<Int>();
    // 학생 돌면서 
    // 번호 크기 비교해가며
    // 팀이 된 애들을 set에 담는다.
    // n - set의 사이즈 = 답

    for i in 0..<n {
        if (i >= students[i]) {
            studentsInTeam.insert(i);
            studentsInTeam.insert(students[i]);
        }
    }
    print("studentsInTeam: \(studentsInTeam)")
    answer += "\(n - studentsInTeam.count)\n"
}

print(answer)