//
//  VendingMachine.swift
//  VendingMachine
//
//  Created by paulBookAir on 2016-07-06.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation


// Protocols


protocol VendingMachineType {
    var selection: [VendingSelection] { get }
    var inventory: [VendingSelection: ItemType] { get set }
    var amountDeposited: Double { get set }
    
    init(inventory: [VendingSelection: ItemType])
    
    func vend(selection: VendingSelection, quantity: Double) throws
    func deposit(amount: Double)
}

protocol ItemType {
    var price: Double { get }
    var quantity: Double { get set }
}


// Helper Classes

class PlistConverter {
    class func dictionaryFromFile(resource: String, ofType type: String) throws -> [String : AnyObject] {

    }
}
// Type methods are to scope the function well into the class, and also to not hold onto the data unnecessarily like we do if we create instances of an object, because in the latter case you are aiming to start with an initialized node, and then hold that data as it changes over the life of that object. For simpler calculations such as this vending machine app, you would not need that and you just need to transfer the dictionary values from the keys associated with each item in the machine to be converted into a numerical value to add up the total cost.

// Concrete Types

enum VendingSelection {
    case Soda
    case DietSoda
    case Chips
    case Cookie
    case Sandwich
    case Wrap
    case CandyBar
    case PopTart
    case Water
    case FruitJuice
    case SportsDrink
    case Gum
}

struct VendingItem: ItemType {
    let price: Double
    var quantity: Double
}

class VendingMachine: VendingMachineType {
    
    let selection: [VendingSelection] = [.Soda, .DietSoda, .Chips, .Cookie, .Sandwich, .Wrap, .CandyBar, .PopTart, .Water, .FruitJuice, .SportsDrink, .Gum]
    var inventory: [VendingSelection: ItemType]
    var amountDeposited: Double = 10.0
    
    required init(inventory: [VendingSelection : ItemType]) {
        self.inventory = inventory
    }
    
    func vend(selection: VendingSelection, quantity: Double) throws {
        // add code
    }
    
    func deposit(amount: Double) {
        // add code
    }
}

// to DO things is exactly what a class is meant for.