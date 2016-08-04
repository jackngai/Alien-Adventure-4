//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
//  /* single line version */
        return inventory.filter{ $0.rarity == UDItemRarity.Common }
//  /* multiple lines version */
//        let inventoryOfCommon = inventory.filter({
//            (item:UDItem)->Bool in
//            return item.rarity == UDItemRarity.Common
//        })
//        return inventoryOfCommon
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"