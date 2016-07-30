//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var match = true
//        for requestType in requestTypes{
//            for badge in badges{
//                if badge.requestType == requestType{
//                    foundBadge = true
//                    break
//                } else {
//                    foundBadge = false
//                }
//            }
//        }
        for badge in badges{
            for requestType in requestTypes{
                match = false
                if badge.requestType == requestType{
                    match = true
                }
            }
        }
        
        return match
    }
    
}
