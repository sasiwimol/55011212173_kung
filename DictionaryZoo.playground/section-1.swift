class Zoo {
    let animal: [String: String] = ["Tiger":"Meat","Monkey":"banana","Panda":"Bamboo"]
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
        return anser
    }
}

let Zoo1 = Zoo(animal: "Panda")
Zoo1.Zoofunny()
