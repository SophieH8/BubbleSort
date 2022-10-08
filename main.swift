
 var wordArray = [String]()

let sortedWordArray : [String]
var word : String


func stringGreaterThan(string1: String, string2: String) -> Bool {
    
    //filters out anything that isn't a letter to sort only the letters
    let s1 = string1.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let s2 = string2.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    return s1.lowercased() > s2.lowercased()
}



// swaps two elements in an array
func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = strings[firstIndex]
    strings[firstIndex] = strings[secondIndex]
    strings[secondIndex] = temp
    
}

// sorts integers in an array by smallest to largest
func bubbleSort(unsortedIntegers: [String]) -> [String]{
    var sortedIntegers = unsortedIntegers
    var swaps = 1

    while swaps != 0 {
        swaps = 0
        for element in 0..<sortedIntegers.count - 1 {
            if stringGreaterThan(string1: sortedIntegers[element], string2: sortedIntegers[element + 1]) {
//            if sortedIntegers[element] > sortedIntegers[element + 1] {
                swap(strings: &sortedIntegers, firstIndex: element, secondIndex: element + 1)
                swaps += 1

            }
        }
    }

    return sortedIntegers
}

//checks if word is nil, breaks loop if its blank, appends if it isn't
while let word = readLine() {
    if word == "" {
     break
    } else {
    wordArray.append(word)
    }
}


let bub = bubbleSort(unsortedIntegers: wordArray)
//prints every word in the sortedWordArray on a new line
for word in bub {
    print(word)
    }

