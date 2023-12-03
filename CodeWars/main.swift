//
//  main.swift
//  CodeWars
//
//  Created by Sonun on 22/11/23.
//

import Foundation

func getGrade(_ s1:Int, _ s2:Int, _ s3:Int) -> String {
    
    let avarageScore = (s1 + s2 + s3)/3
    
    switch avarageScore {
    case 0...100: return "A"
    case 80..<90: return "B"
    case 70..<80: return "C"
    case 60..<70: return "D"
    case 0..<60:  return "F"
    default:      return "error"
    }
    
}

var result = getGrade(80, 90, 30)
print(result)


func repeatStr(_ n: Int, _ string: String) -> String {
  
    return String(String(repeating: string, count: n))
}

print(repeatStr(8, "S"))

func evenOrOdd(_ number: Int) -> String {
    var numberType = ""
    
    if number % 2 == 0 {
       numberType = "Even"
    } else {
        numberType = "Odd"
    }
    
    return numberType
}

print(evenOrOdd(143))

func multiNumber(_ number: Int) -> String {
     
   return " 1 * \(number) = \(number * 1) \n 2 * \(number) = \(number * 2) \n 3 * \(number) = \(number * 3) \n 4 * \(number) = \(number * 4) \n 5 * \(number) = \(number * 5) \n 6 * \(number) = \(number * 6) \n 7 * \(number) = \(number * 7) \n 8 * \(number) = \(number * 8) \n 9 * \(number) = \(number * 9) \n 10 * \(number) = \(number * 10)"
}

print(multiNumber(5))

func booleanToString(_ b: Bool) -> String {
 
    switch b {
    case true: return "true"
    case false: return "false"
    }
}

print(booleanToString(false))

//Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

func gigitToString (_ digit: String) -> String {
    var number = Int(digit)
    
    return digit
}

func createBox(_ m:Int, _ n:Int) -> [[Int]] {
   
    
  return [[]]
}

func square(_ num: Int) -> Int {
  
  return num * num
}

print(square(8))

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    var newArray: [String] = []

    for i in arr {
        if i.contains(str) {
            newArray.append(i)
        }
    }
    
    return newArray
}

print((wordSearch("ko", ["koko", "iki", "ice", "juice", "plan"])))

func digitize(_ num:Int) -> [Int] {
    
    var digitArray = String(num).compactMap { $0.wholeNumberValue}
    
    return digitArray
}
print(digitize(3456789))

func summ(_ arr: [Any]) -> Int {
    
    return arr.reduce(0) { sum, element in
        if let number = element as? Int {
            return  sum + number
        } else if let string = element as? String, let number = Int(string) {
            return sum + number
        } else {
            return sum
        }
    }
}

print(summ([1,1,"2", 2, "5"]))

func getSum(_ arr: [Any]) -> Int {
    return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
}

print(getSum([7,1,"8"]))


//Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

func summOfInt(_ string: String) -> Int {
    var array: [Character] = []

    for i in string {
        if i.isNumber {
            array.append(i)
        }
    }
    
    return array.compactMap { Int(String($0)) }.reduce(0, +)
}

print(summOfInt("hglhi1212"))


func sumOfIntefers(_ srt: String) -> Int {
    
    let string = srt.components(separatedBy: CharacterSet.decimalDigits.inverted)
    
    return string.compactMap { Int($0)}.reduce(0, +)
}

print(sumOfIntefers("itguiwruj55dcef9fvrf16"))


func sumOfInt2(_ string: String) -> Int {
    let koko = string.split {!$0.isNumber}
    print (koko)
    return string.split {!$0.isNumber}.compactMap { Int($0) }.reduce(0, +)
}

print(sumOfInt2("nrn88wjnj12kefnv1"))

func boolToWord(_ bool: Bool) -> String {
    return bool ? "Yes" : "No"
}

print(boolToWord(false))

//A number is non consecutive if it is not exactly one larger than the previous element in the array. The first element gets a pass and is never considered non consecutive.
//Create a function named allNonConsecutive
//E.g., if we have an array [1,2,3,4,6,7,8,15,16] then 6 and 15 are non-consecutive.

func nonConsecutive(_ arr: [Int]) -> [(Int,Int)] {
    var tuple:[(Int,Int)] = []
   
    for index in 1..<arr.count {
        if arr[index] - arr[index - 1] != 1 {
            print(index)
            tuple.append((index,arr[index]))
        }
    }
        return tuple
}

print(nonConsecutive([1,2,3,5,6,7,10,11,12,55,56]))

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().dropFirst().filter { arr[$0.0 - 1] != $0.1 - 1 }
}

// MARK: 10/31
func getSumOfStrings(_ a: String, _ b: String) -> String {
    var result = 0

    result = (Int(a) ?? 0) + (Int(b) ?? 0)
    
    return String(result)
    
}

print(getSumOfStrings("3","3"))


func sum_str(_ a: String, _ b: String) -> String {
  String((Int(a) ?? 0) + (Int(b) ?? 0))
}

print(sum_str("10","3"))


// MARK: 11/31

func oddOne(_ arr: [Int]) -> Int? {
    
   
    var index: Int?
    
    var ind = index

    for i in 1..<arr.count {
        if arr[i] % 2 == 1 {
          ind = i
        }
    }
    
    return ind
}

print(oddOne([2,4,6,8,10,33])!)

//You Can't Code Under Pressure #1
func doubleInteger(_ num: Int) -> Int {

  return num * 2
}

print(doubleInteger(4))
