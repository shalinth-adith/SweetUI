//
//  AddressView.swift
//  SweetUI
//
//  Created by shalinth adithyan on 14/07/25.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order : Order
    
    
    var body: some View {
        Form{
            Section(header: Text("Shipping Address")){
                TextField("Name", text: $order.name)
                TextField("Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip Code", text: $order.zipCode)
            }
 
            
            Section{
                NavigationLink("Checkout"){
                    CheckoutView(order: order)
                }
            }
        }
        .navigationTitle(Text("Order"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddressView(order: Order())
}
