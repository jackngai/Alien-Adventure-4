//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        let sortedInventory = sortLeastToGreatest(inventory)
        var uniqueInventory = [UDItem]()
        var index = 0
        while index < sortedInventory.count - 1 {
            if sortedInventory[index] != sortedInventory[index + 1]{
                uniqueInventory.append(sortedInventory[index])
            }
            index += 1
        }
        if uniqueInventory.last != sortedInventory.last{
            uniqueInventory.append(sortedInventory.last!)
        }
        return uniqueInventory
    }
}
