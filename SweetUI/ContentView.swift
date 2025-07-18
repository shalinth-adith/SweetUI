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
            VStack {
                CupcakeHeaderView()

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

                        NavigationLink("Add Cupcake") {
                            AddCupcakeView(cupcakes: $order.cupcakes)
                        }
                        .cupcakeButton()
                    }

                    Section {
                        NavigationLink("Delivery Address") {
                            AddressView(order: order)
                        }
                        .disabled(order.cupcakes.isEmpty)
                        .cupcakeButton()
                    }
                }
            }
            .background(Color.cupcakeCream.ignoresSafeArea())
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


// MARK: - Preview
#Preview {
    ContentView()
}
