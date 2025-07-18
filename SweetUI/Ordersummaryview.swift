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
            Section(header: Text("Cupcakes").font(.cupcakeSectionTitle)) {
                ForEach(order.cupcakes) { item in
                    VStack(alignment: .leading, spacing: 4) {
                        Text("\(Order.types[item.type]) x\(item.quantity)")
                            .font(.cupcakeBody.bold())
                        if item.extraFrosting {
                            Text("• Extra Frosting")
                                .foregroundColor(.secondary)
                                .font(.cupcakeSecondary)
                        }
                        if item.addSprinkles {
                            Text("• Sprinkles")
                                .foregroundColor(.secondary)
                                .font(.cupcakeSecondary)
                        }
                    }
                    .cupcakeCard()
                }
            }

            Section(header: Text("Delivery Address").font(.cupcakeSectionTitle)) {
                Text(order.name)
                Text(order.streetAddress)
                Text(order.city)
                Text(order.zipCode)
            }

            Section(header: Text("Total Cost").font(.cupcakeSectionTitle)) {
                Text(order.cost, format: .currency(code: "INR"))
                    .font(.title2.bold())
            }

            Section {
                NavigationLink("Confirm Order") {
                    CheckoutView(order: order)
                }
                .cupcakeButton()
            }
        }
        .navigationTitle("Order Summary")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.cupcakeCream.ignoresSafeArea())
    }
}

#Preview {
        OrderSummaryView(order: Order())
}

