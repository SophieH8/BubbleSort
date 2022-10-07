
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

// Add your code below:

// swaps number in index with the number on its right
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

// sorts integers in an array by smallest to largest
func bubbleSort(unsortedIntegers: [Int]) {
    var sortedIntegers = unsortedIntegers
    var swaps = 1
    var swapTotal = 0
    var pass = 0

    print("Pass: 0, Swaps: 0/0, Array: \(sortedIntegers)")        

    while swaps != 0 {
        swaps = 0
        for element in 0..<sortedIntegers.count - 1 {
            if sortedIntegers[element] > sortedIntegers[element + 1] {
                swap(integers: &sortedIntegers, firstIndex: element, secondIndex: element + 1)
                swaps += 1
                swapTotal += 1
            }
        }
        print("Pass: \(pass + 1), Swaps: \(swaps)/\(swapTotal), Array: \(sortedIntegers)")
        pass += 1
    }

}

bubbleSort(unsortedIntegers: unsortedIntegers)
