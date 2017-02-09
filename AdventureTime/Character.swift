//
//  Character.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

struct Character {
    let name: String
    let species: String
    let occupation: String
    var powerLevel: Double
    var killedEnemies: Int = 0
    var bestFriend: String = ""
    
    init (name nameIn: String, species specIn: String, occupation occIn: String, powerLevel plIn: Double){
        self.name = nameIn
        self.species = specIn
        self.occupation = occIn
        self.powerLevel = plIn
    }
    
    mutating func fightEnemy (character: Character){
        guard self.powerLevel > character.powerLevel else{
            return
        }
        self.powerLevel -= 1
        self.killedEnemies += 1
    }
    
    mutating func becomeBestFriendsWith (character: Character) {
        self.bestFriend = character.name
    }
    
    func displayImage() -> UIImage {
        
        switch name {
        case "Finn the Human": 
            return UIImage(named: "Finn")!
        case "Jake the Dog":
            return UIImage(named: "JakeTheDog")!
        case "Princess Bubblegum":
            return UIImage(named: "PrincessBubblegum")!
        case "Lemongrab":
            return UIImage(named: "Lemongrab")!
        case "BMO":
            return UIImage(named: "BMO")!
        case "Lumpy Space Princess":
            return UIImage(named: "LumpySpacePrincess")!
        default:
            return UIImage()
        }
        
    }
}
   
