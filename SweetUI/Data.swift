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
    
    var specialRequestEnabled = false
    var extraFrosting = false
    var addSprinkles = false
}
