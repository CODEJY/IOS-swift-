//: Playground - noun: a place where people can play

//import UIKit

class StudentC {
    var width:Float = 0.0
    var height:Float = 0.0
    var area:Float {
        return width*height
    }
    var cname:String = "cname"
    var names:[String] = ["cname:1","cname:2","cname:3"]
    //类的普通方法
    func getName() ->String! {
        return self.cname
    }
    //class方法，可被子类重载，而static不可以
    class func funcClass() {
        print("Class Func")
    }
    //下标
    subscript (index:Int)->String? {
        get {
            if (index > 0 && index < 3) {
                return names[index]
            } else {
                return nil
            }
        }
        set {
            if (index >= 3) {
                names.insert("name:"+String(index), at: index)
            }
        }
    }
}
//类扩展方法
extension StudentC {
    func getExtension() {
        print("StudentC Extension Func")
    }
}
struct StudentS {
    var constructStr:String!
    var sname:String = "sname"
    var names:[String] = ["sname:1","sname:2","sname:3"]
    var mutateString:String = "Default String"
    //mutating
    mutating func modify(string:String) {
        mutateString = string;
    }
    //结构体的普通方法
    func getName() -> String! {
        return self.sname
    }
    //static 方法
    static func funcStatic()->Void {
        print("Static Func")
    }
    //下标
    subscript (index:Int)->String? {
        get {
            if (index > 0 && index < 3) {
                return names[index]
            } else {
                return nil
            }
        }
        set {
            if (index >= 3) {
                names.insert("name:"+String(index), at: index)
            }
        }
    }
}
//结构体扩展方法
extension StudentS {
    func getExtension() {
        print("StudentS Extension Func")
    }
}


//正文,结构体逐一构造器，mutating关键字，下标，扩展方法
//逐一构造器
var stuS = StudentS(constructStr:"ConstructString",sname:"new sname",names:["sname1:1","sss"],mutateString:"mutate")
print(stuS.constructStr)

// mutating
stuS.modify(string: "modify")
print(stuS.mutateString)
//下标
print(stuS[1]!)
//扩展方法
stuS.getExtension()
//计算型属性
var stuC = StudentC()
stuC.width = 10.0
stuC.height = 10.0
print(stuC.area)
stuC.width = 5.0
print(stuC.area)


