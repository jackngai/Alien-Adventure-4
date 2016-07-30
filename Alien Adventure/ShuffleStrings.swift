//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty{
            return true
        } else if shuffle.characters.count < s1.characters.count + s2.characters.count{
            return false
        } else {
            var s1Index = 0, s2Index = 0
            for letter in shuffle.characters{
                if s1Index < s1.characters.count && letter == s1[s1.startIndex.advancedBy(s1Index)]{
                    s1Index += 1
                } else if s2Index < s2.characters.count && letter == s2[s2.startIndex.advancedBy(s2Index)]{
                    s2Index += 1
                } else {
                    return false
                }
                
            }
            
        }
        return true
    }
}



