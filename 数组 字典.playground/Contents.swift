// 数组有序
let stringArray: [String] = ["a","b","c"]

let i = stringArray.first // nil
let p = stringArray[2] // 直接报错

stringArray.count


var scores:[Double] = [] // var scores = [Double]()

scores.isEmpty
scores.count

scores.append(80)
scores.append(90)
scores[1] = 100

scores.insert(90, at: 1)
scores.insert(70, at: 0)

// scores.insert(110, at: 5) Array index is out of range

scores += [110]

scores.remove(at: 4)
scores.removeLast()

scores
scores.isEmpty
scores.count

var sum = 0.0
for score in scores {
    sum += score
}
sum

sum = 0

for i in 0..<scores.count {
    sum += scores[i]
}
sum

sum = 0

for (_,score) in scores.enumerated() {
    sum += score
}
sum

// 字典无序
var dic: [String:String] = [:] // var dic = [String:String]()

dic["wang"] = "jie"
dic

dic["wang"] = "Jie"
dic

dic["wang"] = nil
dic

let value1 = dic["wang"] // 可选
let value2 = dic["wang"] ?? "jie"
let value3 = dic["wang",default: "Jie"]

let dic1 = ["a":"A","b":"B"]
for key in dic1.keys {
    let value = dic1[key]!
    print("Key:\(key),Value:\(value)")
}

print()

for (_,x) in dic1.enumerated() {
    print("Key:\(x.key),Value:\(x.value)")
}
