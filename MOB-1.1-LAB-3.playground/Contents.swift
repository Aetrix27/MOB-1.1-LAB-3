//: A UIKit based Playground for presenting user interface
  
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

for color in colorHex{
    print(color)
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

print("Color count function:")
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

func powerOfTwo(n : [Double]){
    
    for index in n{
        var power : Double = pow(index,2)
        if(power <= index){
            print(power)
        }
    }

}

print("Get num of students function:")
func getNumberOfStudents() -> String{
    var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]
    var message : String = ""
    
    for (key, value) in coursesAndStudents{
        message +=  "There are \(value) students in the \(key) track. \n"
    }
    
    return message

}
print(getNumberOfStudents())

func checkEnds(array : [Int]){
    for index in array{
        if(index == array[0]){
            print(index)
        }
    }
    
}

func computeSum(array : [Int]) -> Int{
    var sum : Int = 0
    for index in array{
        sum += index
    }
    
    return sum
    
}

print(computeSum(array: [2,5,7]))


func reverseArray(arr : [Int]) -> [Int]{
    var loop_num = 0
    var answer : [Int] = []
    while loop_num < arr.count{
        answer.append(arr[arr.count - loop_num - 1])
        loop_num += 1
    }
    
    return answer
}

print(reverseArray(arr: [1,2,3]))

func uniqueLetters(inString : String) -> Bool{
 
    var letterString : [Character] = []
    for letter in inString{
        var letterCounter : Int = 0
        print(letter)
        letterString.append(letter)
        for index in inString{
            print(index)
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

print(uniqueLetters(inString: "Helo"))

func charAppears(inString : String, c : Character) -> Int{
    var letterString : [Character] = []
    var letterCounter : Int = 0
    var message : String = ""
    
    for letter in inString{
        letterString.append(letter)
        print(letter)
        
        if(letter == c){
            letterCounter += 1
            
        }
        print(letterCounter)
    }
    
    return letterCounter

}

print(charAppears(inString : "racecar", c : "r"))

func addEvents() -> [[Int]]{
    var arr = [[Int]]()
    for row in 0...4{
        var add : Int = 0
        for col in 0...4{
            //if(row%2 == 0)
            if(row == 0){
                arr.append([0,0])
                
            }else{
                add += row
                arr.append([add,col])
            }
        }

    }
    
    return arr
    
}

print(addEvents())
