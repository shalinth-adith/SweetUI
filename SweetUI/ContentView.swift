//
//  ContentView.swift
//  SweetUI
//
//  Created by shalinth adithyan on 12/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var order = Order()

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Your Cupcakes")) {
                    ForEach(order.cupcakes) { item in
                        HStack {
                            Text("\(Order.types[item.type]) x\(item.quantity)")
                            Spacer()
                            if item.extraFrosting { Text("+ Frosting") }
                            if item.addSprinkles { Text("+ Sprinkles") }
                        }
                    }

                    NavigationLink("Add Cupcake") {
                        AddCupcakeView(cupcakes: $order.cupcakes)
                    }
                }

                Section(header: Text("Delivery")) {
                    TextField("Name", text: $order.name)
                    TextField("Street Address", text: $order.streetAddress)
                    TextField("City", text: $order.city)
                    TextField("ZIP Code", text: $order.zipCode)
                }

                Section {
                    NavigationLink("Review Order") {
                        OrderSummaryView(order: order)
                    }
                    .disabled(order.cupcakes.isEmpty || order.hasValidAddress)
                }
            }
            .navigationTitle("Cupcake Cart")
        }
    }
}


// MARK: - Preview
#Preview {
    ContentView()
}
