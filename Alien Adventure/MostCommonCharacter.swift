//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    

    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        guard inventory != [] else{
            return nil
        }
        var characterCount = [Character:Int]()
        for item in inventory{
            for character in item.name.lowercaseString.characters{
                if characterCount[character] != nil{
                    characterCount[character] = characterCount[character]! + 1
                } else {
                    characterCount[character] = 1
                }
            }
        }
        
        var mostCommonChar: Character?
        var mostFrequent = 0
        
        for (character, frequency) in characterCount{
            if frequency > mostFrequent{
                mostCommonChar = character
                mostFrequent = frequency
            }
        }
        return mostCommonChar
    }
}
