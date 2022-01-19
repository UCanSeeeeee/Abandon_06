
func addFunction(_ string1: String, and string2: String) -> String {
    string1 + string2
}

addFunction("1", and: "2")

class Animal {
    func move() -> String {
        "移动方式"
    }
    
    func eat() -> String {
        "进食"
    }
}

class Bird: Animal {
    override func move()  -> String {
        "飞行"
    }
    override func eat() -> String {
        super.eat() + "虫子"
    }
}

let bird = Bird()
bird.eat()
bird.move()

let animal = Animal()
animal.eat()
animal.move()

func isBird(_ animal: Animal) -> Bool{
    animal is Bird
}

func coverToBird(_ animal: Animal) -> Bool{
    if let _ = animal as? Bird {
        return true
    }else{
        return false
    }
}

isBird(bird)
isBird(animal)

coverToBird(bird)
coverToBird(animal)

protocol Flyable {
    func fly() -> String
}

extension Bird:Flyable {
    func fly() -> String {
        move()
    }
}

bird.fly()

class Airplane: Flyable{
    func fly() -> String {
        "飞机飞行"
    }
}

let airplane = Airplane()
airplane.fly()
