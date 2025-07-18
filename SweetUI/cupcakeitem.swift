//
//  cupcakeitem.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//

import Foundation


struct CupcakeItem: Identifiable, Codable, Equatable {
    var id = UUID()
    var type: Int
    var quantity: Int
    var extraFrosting: Bool
    var addSprinkles: Bool
}
