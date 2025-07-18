//
//  AddressView.swift
//  SweetUI
//
//  Created by shalinth adithyan on 14/07/25.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order

    var body: some View {
        Form {
            Section(header: Text(" Shipping Address").font(.cupcakeSectionTitle)) {
                TextField("Name", text: $order.name)
                    .autocapitalization(.words)
                    .disableAutocorrection(true)

                TextField("Street Address", text: $order.streetAddress)
                    .autocapitalization(.words)

                TextField("City", text: $order.city)
                    .autocapitalization(.words)

                TextField("ZIP Code", text: $order.zipCode)
                    .keyboardType(.numberPad)
            }

            Section {
                NavigationLink("Review Order") {
                    OrderSummaryView(order: order)
                }
                .cupcakeButton()
            }
        }
        .navigationTitle("Address")
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.cupcakeCream.ignoresSafeArea())
    }
}

#Preview {
    AddressView(order: Order())
}
