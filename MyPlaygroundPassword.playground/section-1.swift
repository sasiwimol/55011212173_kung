
class Password {
    let Username: [String] = ["Kung","Sasiwimol","Panomkhet"]
    let password: [String] = ["1234","ban444","Ba4411"]
    let user: String
    
    init(Username:String){
        self.user = Username
    }
    func UserPass() -> String{
        var anser:String = ""
        for(var i=0; i < Username.count ; i++){
            if(Username[i] == user){
                anser = password[i];
            }
        }
        return anser
    }
}

let User1 = Password(Username: "Kung")
User1.UserPass()