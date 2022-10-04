//
//  main.swift
//  class work 5
//
//  Created by Mac on 25/9/22.
//

import Foundation

print("Hello, World!")





let horeus = ["Voin","medick","tank","MAGIC","Boss"]
var hp = [1000,1000,1000,1500]
let hit = [200,300,100,0,200]
var boss = 5000
var round = 0
while boss > 0{
    round += 1
    boss -= (hit[0] + hit[1] + hit [2] + hit[3])
    if round % 2 == 0{
        hp[0] = hp[0] + 200
        hp [1] = hp [1] + 200
        hp [2] = hp [2] + 200
        hp [3] = hp [3] + 200
    }
    if boss > 0{
        hp[0] = hp[0] - 200
        hp [1] = hp [1] - 200
        hp [2] = hp [2] - 200
        hp [3] = hp [3] - 200
    }
    
    
    if boss <= 0 && hp.reduce(0,+) > 0{
        print("Выграли Игроки за \(round) Роунд")
        print("\(horeus[0])Нанес\(round * hit[0])Урона")
        print("\(horeus[1])Нанес\(round * hit[1])Урона")
        print("\(horeus[2])Нанес\(round * hit[2])Урона")
        print("\(horeus[3])Нанес\(round * hit[3])Урона")
        print("\(horeus[4])Нанес\(round * hit[4])Урона-но Медик вылечил их\(round/2 * 200)")
        
    }
    if boss <= 0 && hp.reduce(0,+) <= 0{
        print("Игра окончена вы умерли\(round)")
    }
              if boss > 0 && hp.reduce(0,+) <= 0{
            print("Победил Босс!!")
        }
  
    }

        
