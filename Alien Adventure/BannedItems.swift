//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let inventory = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        var bannedItemsList = [Int]()
        
        for item in inventory{
            guard let name = item["Name"] as? String where name.containsString("Laser"), let historicalData = item["HistoricalData"] as? [String:AnyObject], let carbonAge = historicalData["CarbonAge"] as? Int where carbonAge < 30, let itemID = item["ItemID"] as? Int else{
                continue
            }
            bannedItemsList.append(itemID)
        }
        return bannedItemsList
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"