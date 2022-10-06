//
//  main.swift
//  class work 5
//
//  Created by Mac on 25/9/22.
//

import Foundation

print("qdq")

//2
let add = readLine()!
var add2 :[String] = []

var space = ""
var slov = ""
for ad in add {
    if ad == " "{
        space += String(ad)
    };if ad != "," && ad != " " && add != "."{
        slov += String(ad)
    }

}
print (slov.count)
print (space.count)


//3
var slov : [[String]] = [[]]
func add2 (name:String){
    let first = name.first!
    var found = false
    for (index,item) in slov.enumerated(){
        for(index2,item2) in item.enumerated(){
            if index2 == 0 && item2 == String(first) && found == false{
                slov[index].append(name)
                found = true
            }else{
                continue
            }
        }
    }
    if found == false{
        var arry: [String] = []
        arry.append(String(first))
        arry.append(name)
        slov.append(arry)
    }
}
let rea4 = readLine()!
add2(name: rea4)
let rea3 = readLine()!
add2(name: rea3)
let rea2 = readLine()!
add2(name: rea2)
let rea1 = readLine()!
add2(name: rea1)
print(slov)

