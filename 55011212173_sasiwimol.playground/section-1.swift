// Playground - noun: a place where people can play

import UIKit

var shoppingListExplicit=[String]()
shoppingListExplicit=["Eggs","Milk"]
var shoppingList = ["Eggs","Milk"]
println("The shopping list contain \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate spread","Cheese","Butter"]
var fristItem = shoppingList[0]
shoppingList[0]="six eggs"
shoppingList
