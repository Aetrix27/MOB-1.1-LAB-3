import UIKit

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

for (color, code) in colorHex{
    print("The color is \(color) and its hex code is \(code)")
}
    
var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

var colorCount : [String : Int] = [:]
for color in colors{
    var redCount : Int = 0
    var orangeCount : Int = 0
    var purpleCount : Int = 0
    var pinkCount : Int = 0
    var blueCount : Int = 0
    var greenCount : Int = 0
    
    if color == "red"{
        redCount += 1
        colorCount[color] = redCount
    }
    else if color == "orange"{
        orangeCount += 1
        colorCount[color] = orangeCount
    }
    else if color == "purple"{
        purpleCount += 1
        colorCount[color] = purpleCount
        
    }
    else if color == "pink"{
        pinkCount += 1
        colorCount[color] = pinkCount
        
    }
    else if color == "blue"{
        blueCount += 1
        colorCount[color] = blueCount
        
    }else if color == "green"{
        greenCount += 1
        colorCount[color] = greenCount
        
    }
    
}

print("Color count:")
for color in colorCount{
    print(color)
}


func fibo(n : Int ) -> [Int] {
    var nums : [Int] = [1,1]
    var number : Int = 0
    for index in 2...n{
        number = nums[index - 1] + nums[index - 2]
        nums.append(number)
    }
    
    return nums
    
}
print("Fibonacci Function:")
print(fibo(n : 4))

func powerOfTwo(n : Int){
    var power : Decimal = 0
    for index in 1...n{
        power = pow(Decimal(index),2)
        if(power <= Decimal(n)){
            print(power)
        }
    }
}

print("Power of Two Function:")
print(powerOfTwo(n : 16))

func getNumberOfStudents() -> String{
    var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]
    var message : String = ""
    
    for (key, value) in coursesAndStudents{
        message +=  "There are \(value) students in the \(key) track. \n"
    }
    
    return message

}

print("Get num of students function:")
print(getNumberOfStudents())

func checkEnds(arr : [Int]) -> String{
    if(arr[0] == arr[arr.count-1]){
        return "The ends are equal"
    }else{
        return "The ends are not equal"
    }
    
}

print("Check Ends Function:")
print(checkEnds(arr: [5,4,4,5]))

func computeSum(array : [Int]) -> Int{
    var sum : Int = 0
    for index in array{
        sum += index
    }
    
    return sum
    
}

print("Compute Sum Function:")
print(computeSum(array: [2,5,7]))

func reverseArray(arr : [Int]) -> [Int]{
    var index = 0
    var reversedArr : [Int] = []
    while index < arr.count{
        reversedArr.append(arr[arr.count - index - 1])
        index += 1
    }
    
    return reversedArr
}

print("Reverse Array Function:")
print(reverseArray(arr: [1,2,3]))

func uniqueLetters(inString : String) -> Bool{
 
    var letterString : [Character] = []
    for letter in inString{
        var letterCounter : Int = 0
        letterString.append(letter)
        for index in inString{
            if(index == letter){
                letterCounter += 1
            }
            if(letterCounter >= 2){
                return false
            }
        }
    }
    
    return true
}

print("Unique Letters Function:")
print(uniqueLetters(inString: "keyboard"))

func charAppears(inString : String, c : Character) -> Int{
    var letterString : [Character] = []
    var letterCounter : Int = 0
    
    for letter in inString{
        letterString.append(letter)
        if(letter == c){
            letterCounter += 1
        }
    }
    
    return letterCounter

}

print("Character Appears function:")
print(charAppears(inString : "racecar", c : "r"))

func addEvents() -> Int{
    var arr = [[Int]]()
    var sumOfRows : Int = 0
    for row in 0...4{
        var multipleNum : Int = 0
        var colArr : [Int] = []
        for col in 0...4{
            if(row % 2 == 0){
                sumOfRows += col
            }
            if(row == 0){
                colArr.append(0)
            }else{
                multipleNum += row
                colArr.append(multipleNum)
            }
        }
        arr.append(colArr)
    }
    
    print(arr)
    return sumOfRows
    
}

print("Add Events Function:")
print(addEvents())
