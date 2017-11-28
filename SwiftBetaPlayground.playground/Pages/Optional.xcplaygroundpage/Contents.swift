//: [Previous](@previous)

import Foundation

/*
 * 第一、基本概念
 */
//可选类型的定义方式
let name: String? = "酷走天涯"

var otherName: Optional<String>
otherName = "Hello World!"

//显示拆包
name!

print(otherName)
print(otherName!)


//隐式拆包
var alwayHadValue: String! = "Hello World!" //不推荐使用，除非你能确定一定有值
print(alwayHadValue)


/*
 * 空合运算符(用于判断变量或常量是否为nil)
 *如果第一个解包值发现为nil,则使用第二值
 */
let nickName: String? = nil
let realName: String = "XUJIE"
let message = "Hi \(nickName ?? realName)"


/*
 * 第二、可选绑定Optional Binding
 * 通过在条件判断语句中（如if、while等）把Optional值直接给一个临时常量，Swift会自动检测Optional是否包含值，如果包含值，会隐式的拆包并给那个临时常量，在接下来的上下文中就能直接使用这个临时常量了
 */
var score: Int?
score = 100
if let value = score {
    print("your score is \(value)")
} else {
    print("score is nil")
}



func validateString(str: String?) -> Bool {
    if nil != str {
        print(str!)
        return true;
        
    } else {
        print("string is nil")
        return false
    }
}
var jobDesc: NSString? = nil
validateString(str: jobDesc as String?);

jobDesc="Swift"
validateString(str: jobDesc as String?)


/*
 * 第三、可选链 Optional Chaining
 */
print("\n\n")
class Toy {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Pet {
    var name: String
    var toy: Toy?
    init(name: String) {
        self.name = name
    }
    
    func play() {
        if nil != self.toy {
            print("\(self.name) play \(self.toy!.name)")
        }
    }
}

class Person {
    var name: String
    var pet: Pet?
    init(name: String) {
        self.name = name
    }
}

let jack: Person = Person(name: "Jack")
jack.pet = Pet(name: "Dog")
jack.pet?.toy = Toy(name: "car")
if let toy = jack.pet?.toy {
    toy.name
}


/*
 * Void也算是一个类型：typealias Void = ()
 */
if let play: Void = jack.pet?.play() {
    print("pet is playing")
}
