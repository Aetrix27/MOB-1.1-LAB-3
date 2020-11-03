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
print(fibo(n : 4))

func powerOfTwo(n : [Double]){
    
    for index in n{
        var power : Double = pow(index,2)
        if(power <= index){
            print(power)
        }
    }

}

