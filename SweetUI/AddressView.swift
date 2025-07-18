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
            Section(header: Text("Shipping Address")) {
                TextField("Name", text: $order.name)
                    .autocapitalization(.words)
                    .disableAutocorrection(true)

                TextField("Street Address", text: $order.streetAddress)
                    .autocapitalization(.words)
                    .disableAutocorrection(true)

                TextField("City", text: $order.city)
                    .autocapitalization(.words)
                    .disableAutocorrection(true)

                TextField("Zip Code", text: $order.zipCode)
                    .keyboardType(.numberPad)
            }

            Section {
                NavigationLink("Review Order") {
                    OrderSummaryView(order: order)
                }
            }
        }
        .navigationTitle("Address")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
