//
//  addcupcakeview.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//


import SwiftUI

struct AddCupcakeView: View {
    @Binding var cupcakes: [CupcakeItem]

    @State private var type = 0
    @State private var quantity = 1
    @State private var extraFrosting = false
    @State private var addSprinkles = false

    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text(" Customize Your Cupcake")
                .font(.cupcakeTitle)
                .padding(.top)

            Form {
                Section(header: Text("Type").font(.cupcakeSectionTitle)) {
                    Picker("Cupcake Type", selection: $type) {
                        ForEach(0..<Order.types.count, id: \.self) {
                            Text(Order.types[$0]).font(.cupcakeBody)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                Section(header: Text(" Quantity").font(.cupcakeSectionTitle)) {
                    Stepper("Quantity: \(quantity)", value: $quantity, in: 1...12)
                        .font(.cupcakeBody)
                }

                Section(header: Text(" Toppings").font(.cupcakeSectionTitle)) {
                    Toggle("Extra Frosting", isOn: $extraFrosting)
                        .font(.cupcakeBody)

                    Toggle("Add Sprinkles", isOn: $addSprinkles)
                        .font(.cupcakeBody)
                }
            }
            .background(Color.cupcakeCream)

            Button("Add to Cart") {
                let newCupcake = CupcakeItem(type: type, quantity: quantity, extraFrosting: extraFrosting, addSprinkles: addSprinkles)
                cupcakes.append(newCupcake)
                dismiss()
            }
            .cupcakeButton()
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.cupcakeCream.ignoresSafeArea())
        .navigationTitle("Add Cupcake")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddCupcakeView(cupcakes: .constant([]))
}
