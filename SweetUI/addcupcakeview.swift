//
//  addcupcakeview.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//


import SwiftUI

struct AddCupcakeView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var cupcakes: [CupcakeItem]

    @State private var type = 0
    @State private var quantity = 1
    @State private var extraFrosting = false
    @State private var addSprinkles = false

    var body: some View {
        Form {
            Section(header: Text("Cupcake Type")) {
                Picker("Type", selection: $type) {
                    ForEach(Order.types.indices, id: \ .self) {
                        Text(Order.types[$0])
                    }
                }
                Stepper("Quantity: \(quantity)", value: $quantity, in: 1...12)
            }

            Section(header: Text("Extras")) {
                Toggle("Extra Frosting", isOn: $extraFrosting)
                Toggle("Add Sprinkles", isOn: $addSprinkles)
            }

            Button("Add to Order") {
                let item = CupcakeItem(type: type, quantity: quantity, extraFrosting: extraFrosting, addSprinkles: addSprinkles)
                cupcakes.append(item)
                dismiss()
            }
        }
        .navigationTitle("Add Cupcake")
    }
}

#Preview {
    AddCupcakeView(cupcakes: .constant([]))
}
