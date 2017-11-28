//: Playground - noun: a place where people can play

import UIKit
//普通函数定义
func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}
print(sayHello(personName: "阳春面"))

//函数默认参数值
func sayYourName(name:String = "John") -> String{
    let result = "My Name is " + name
    return result
    
}
print(sayYourName())
print(sayYourName(name:"Jack"))

//指定外部调用函数参数名
func extParamName(nickName name: String) -> String {
    return "My nickname is " + name
}
print(extParamName(nickName: "ChenChaoHui"))

//多参数返回
func multiReturnParam() -> (name:String,age:Int){
    let name = "Hui"
    let age  = 30
    return (name,age)
}
let person = multiReturnParam()
print("name: \(person.name) , age: \(person.age)")


//可变参数:在参数类型后面加”…”代表可变参数，相当于传入的是个数组类型
func multiParam(numbers: Double...) ->(Double,Int) {
    var total: Double = 0
    for num in numbers {
        total += num
    }
    return (total, numbers.count)
}
let value:(Double,Int) = multiParam(numbers: 1,2,3,4,5,6,7,8)
value.0
value.1



//In-Out参数:通过inout修饰的参数，实际上传入的是引用，函数外部的变量会在函数体中被修改掉。
func swapTwoInts(a :inout Int, b :inout Int) {
    let temp:Int = a
    a = b
    b = temp
}
var x = 6
var y = 8
swapTwoInts(a: &x, b: &y)
print("(x,y) = (\(x),\(y))")


//函数类型完全象一个变量类型一样，还可以作为参数和返回值。
func introduceSelf(name :String) -> String {
    return "my name is \(name)"
}

var funcVar:(String)->String = introduceSelf;
funcVar("ChenChaoHui")




/*
 * 嵌套函数
 * 嵌套函数只在父函数内部可见，但也可以被父函数作为返回值返回到外部，使得这个函数可以在外部被使用
 */
func chooseSayHelloFunction(language: Int) -> ((String)->String) {
    func sayHelloInChinese(name: String) -> String {
        return "你好 " + name
    }
    
    func sayHelloInEnglish(name: String) -> String {
        return "Hello " + name
    }
    
    if language==1 {
        return sayHelloInChinese
    } else {
        return sayHelloInEnglish
    }
}

var sayHelloFunc : (String)->String = chooseSayHelloFunction(language: 1)
sayHelloFunc("陈朝晖")


sayHelloFunc = chooseSayHelloFunction(language: 0)
sayHelloFunc("ChenChaohui")

