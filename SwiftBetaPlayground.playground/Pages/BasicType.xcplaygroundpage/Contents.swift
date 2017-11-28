//: [Previous](@previous)

import Foundation
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
for index in 1..<5 {
    print("\(index) times 5 is \(index * 5)")
}


func arrayDemo() {
    /*
     * array
     */
    var array:[String] = []
    array = ["Hell","World"]
    array[0] = "Hello"
    array.insert("Say", at: 0)
    array.first
    array.last
    
    //clear array
    array = []
    if array.isEmpty {
        print("array is empty")
    } else {
        print("array is not empty")
    }
    
    var intArr:[Int] = [Int]()
    intArr = [1]
    intArr.append(2)
    intArr.append(3)
    intArr.append(4)
    intArr.append(5)
    intArr += [6,7,8]
    intArr.count
    
    
    //遍历数组的两种方式
    var sum = 0
    for num in intArr {
        sum += num
    }
    sum
    
    sum = 0
    for i in 0...intArr.count {
        sum += i
    }
    sum
    
    //遍历数组的区间
    sum = 0
    for i in intArr[0..<3] {
        sum += i
    }
    sum
    
    
    let reversedArr:[Int] = intArr.reversed()
    let newArr = intArr + reversedArr
    intArr = []
}
arrayDemo()

func dictionaryDemo() {
    /*
     * dictionary
     */
    var intDic = [String: Int]()
    var floatDic:[String: Float] = [:]
    intDic["One"] = 1
    intDic["Two"] = 2
    print("\n print dictionary")
    for (key,value) in intDic {
        print("(\(key),\(value))")
    }
    
    floatDic["One"] = 3.1415

    //clear dictionary
    intDic = [:]
    floatDic = [:]
    
}
dictionaryDemo()

func stringDemo() {
    var str = "Hello, playground"
    
    let age:Int = 30
    let ageStr:String = String(age)
    
}
stringDemo()
