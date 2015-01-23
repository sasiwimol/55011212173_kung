class Username{
    var userpass : [String:String] = ["Kung" : "025364", "Paew" : "111111", "Toey" : "888888"]
    let user:String

    init(user1:String){
        self.user = user1
    }
    func Userpass1() ->String {
        var user3:String = ""
        for (key,value) in userpass{
            if(key == user){
                user3=value
            }
        }
        return user3
    }
    func Adduser(useradd:String, pass:String){
        userpass[useradd] = pass
        
    }
    func Deluser(userdel:String){
        userpass[userdel] = nil
        
    }
    func Edituser(useredit:String, passedit:String){
        userpass[useredit]=passedit
    }
    
    
}
let user2 = Username(user1 : "Kung")
user2.Userpass1()
user2.Adduser("Kung", pass: "456897")
user2.Deluser("Toey")
user2.Edituser("Kung", passedit: "899554")