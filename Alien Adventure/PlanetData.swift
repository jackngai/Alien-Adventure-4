//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let dataFileJSON = NSData(contentsOfURL: dataFileURL)!
        var planetDictionariesFromJSON: [[String:AnyObject]]!
        do{
            planetDictionariesFromJSON = try! NSJSONSerialization.JSONObjectWithData(dataFileJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        var planetNameAndValue = ("", 0)
        for planet in planetDictionariesFromJSON{
            guard let name = planet["Name"] as? String, let common = planet["CommonItemsDetected"] as? Int, let uncommon = planet["UncommonItemsDetected"] as? Int, let rare = planet["RareItemsDetected"] as? Int, let legendary = planet["LegendaryItemsDetected"] as? Int where (common + uncommon * 2 + rare * 3 + legendary * 4) > planetNameAndValue.1 else{
                continue
            }
            planetNameAndValue = (name, (common + uncommon * 2 + rare * 3 + legendary * 4))
            
        }
        return planetNameAndValue.0
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"