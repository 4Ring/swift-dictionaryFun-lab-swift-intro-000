//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream",
    ]
    
    
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        
        for (name, icecream) in favoriteFlavorsOfIceCream {
            if icecream == flavor {
            names.append(name)
            }
        }
        return names
    }
    
    
    func count(forFlavor flavor: String) -> Int {
        var count: Int = 0
        
        for (name, icecream) in favoriteFlavorsOfIceCream {
            if icecream == flavor {
                count += 1
            }
        }
        return count
    }
    
    
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
   
    
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
   
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    
    
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    

    func attendeeList() -> String {
        var list: String = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            let isNotLast = name != allNames.last!
            let flavor = favoriteFlavorsOfIceCream[name]!
            if isNotLast {
                list += "\(name) likes \(flavor)\n"
            } else {
                list += "\(name) likes \(flavor)"
            }
        }
        
        return list
    }
}
