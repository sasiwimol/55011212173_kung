
class Zoo {
    var animal: [String: String] = ["Tiger":"Meat","Monkey":"banana","Panda":"Bamboo"]
    let animal1: String
    
    init(animal:String){
        self.animal1 = animal
    }
    func Zoofunny() -> String{
        var anser:String = ""
        for (key,value) in animal{
            if(key == animal1){
                anser = value;
            }
        }
        return "\(animal1) eat \(anser)"
    }
    func Addanimal(animaladd:String, food:String) {
        animal[animaladd] = food
        
    }
    func p1() ->String{
     var s = " "
        s = "Successfully added"
        return s
    }
    
   
}

let Zoo1 = Zoo(animal: "Panda")
Zoo1.Zoofunny()
Zoo1.Addanimal("ช้าง", food: "อ้อย" )
Zoo1.p1()














































