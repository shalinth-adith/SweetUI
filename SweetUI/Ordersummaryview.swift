//
//  Ordersummaryview.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//
import SwiftUI

struct OrderSummaryView: View {
    var order: Order

    var body: some View {
        Form {
            Section(header: Text("Cupcakes")) {
                ForEach(order.cupcakes) { item in
                    VStack(alignment: .leading) {
                        Text("\(Order.types[item.type]) x\(item.quantity)")
                        if item.extraFrosting { Text("+ Extra Frosting") }
                        if item.addSprinkles { Text("+ Sprinkles") }
                    }
                }
            }

            Section(header: Text("Delivery Address")) {
                Text(order.name)
                Text(order.streetAddress)
                Text(order.city)
                Text(order.zipCode)
            }

            Section(header: Text("Total Cost")) {
                Text(order.cost, format: .currency(code: "INR"))
                    .font(.title2)
            }

            NavigationLink("Confirm Order") {
                CheckoutView(order: order)
            }
        }
        .navigationTitle("Order Summary")
    }
}

#Preview {
        OrderSummaryView(order: Order())
}

