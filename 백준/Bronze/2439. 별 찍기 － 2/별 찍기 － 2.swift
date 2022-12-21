let reps = Int(readLine()!)!

for row in 1...reps {
    for stamp in (1...reps).reversed() {
        if stamp <= row {
            print("*",terminator: "")
        } else {
            print(" ",terminator: "")
        }
        
    }
    print()
}