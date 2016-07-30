//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
    
        var requestedItem:UDItem?
        for item in inventory{
            guard item.historicalData["PlanetOfOrigin"] as? String == planet else{
                continue
            }
            if requestedItem?.historicalData["CarbonAge"] == nil || item.historicalData["CarbonAge"] as? Int > requestedItem?.historicalData["CarbonAge"] as? Int{
                requestedItem = item
            }
        }
        return requestedItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"