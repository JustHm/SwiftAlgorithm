for char in readLine()! {
    if char.isUppercase {
        print(char.lowercased(), terminator: "")
    } else {
        print(char.uppercased(), terminator: "")        
    }
}