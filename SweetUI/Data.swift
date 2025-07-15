//
//  Data.swift
//  SweetUI
//
//  Created by shalinth adithyan on 14/07/25.
//

import Foundation

@Observable
class Order{
    static let types = ["Vanilla", "Chocolate", "Strawberry","Rainbow"]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false{
        didSet {
            if specialRequestEnabled==false{
                
                
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
    
    var name = ""
    var streetAddress = ""
    var city = ""
    var zipCode = ""
    
    var hasValidAddress: Bool {
        if  !name.isEmpty && !streetAddress.isEmpty && !city.isEmpty && zipCode.count == 5{
            return false
        }
        return true
    }
    var cost: Decimal{
        var cost = Decimal(quantity) * 60
        cost += Decimal(type) / 2
        
        if extraFrosting {
            cost += 10
        }
        if addSprinkles {
            cost += 5
        }
        return cost
    }
}
