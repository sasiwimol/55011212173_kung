// Playground - noun: a place where people can play

import UIKit

var str = "Free stye"

class arrayFree{
    var shop: [String] = ["สบู่","ยาสีฟัน","แปรงสีฟัน"]
    var price: [String] = ["12","56","89"]
    let show:String
    
    init(shop:String){
      self.show = shop
    }
    func show1() ->String{
        var anser:String = ""
        for(var i=0; i < shop.count ; i++){
            if(shop[i] == show){
                anser = price[i];
            }
        }
        return "\(show) ขายในราคา \(anser)"
    }
    func addshop(shopadd:String,priceadd:String){
        shop.append(shopadd)
        price.append(priceadd)
        
    
    }
    
}
let p = arrayFree(shop: "ยาสีฟัน")
p.show1()
p.addshop("sdf", priceadd: "56")