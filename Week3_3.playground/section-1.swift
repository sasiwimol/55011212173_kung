// Playground - noun: a place where people can play

import UIKit

var str = "Calculator"
class calcul {
    let num1: Double
    let num2: Double
    
    init(num1: Double, num2: Double){
        self.num1 = num1
        self.num2 = num2
        
    }
    func oper(ope :String){
        if (num1>0 && num2<100){
            var ans:Double
            
            if (ope == "+"){
                ans = num1+num2
                println("\(num1) + \(num2) = \(ans)")
            }
            else if (ope == "-"){
                ans = num1-num2
                
                println("\(num1) - \(num2) = \(ans)")
            }
            else if (ope == "*"){
                ans = num1*num2
                println("\(num1) * \(num2) = \(ans)")
            }
            else if (ope == "/"){
                ans = num1/num2
                println("\(num1) / \(num2) = \(ans)")
            }
            else if (ope == "%"){
                ans = num1%num2
                println("\(num1) % \(num2) = \(ans)")
            }
            
        }
        else {
        
            println("NO num 1-100")
        }
        
    
    
        
    }
}
let show = calcul(num1: 10, num2: 11)
show.oper("%")

