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

                Section {
                    NavigationLink("Delivery Address") {
                        AddressView(order: order)
                    }
                    .disabled(order.cupcakes.isEmpty)
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
