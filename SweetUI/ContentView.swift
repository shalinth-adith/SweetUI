//
//  ContentView.swift
//  SweetUI
//
//  Created by shalinth adithyan on 12/07/25.
//

import SwiftUI

struct ContentView : View {
    @State private var order = Order()
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Picker("Select your cake type", selection: $order.type){
                        ForEach(Order.types.indices){
                            Text(Order.types[$0])
                        }
                    }
                    Stepper("Number of Cakes : \(order.quantity)",value:$order.quantity,in:3...20)
                }
                Section{
                    Toggle("Any Special Requests?", isOn: $order.specialRequestEnabled.animation())
                    
                    if order.specialRequestEnabled{
                        Toggle("Add extra Frosting",isOn: $order.extraFrosting)
                        Toggle("Add extra Sprinkles",isOn: $order.addSprinkles)
                    }
                }
                Section{
                    NavigationLink("Delivery Details"){
                        AddressView(order:  order)
                    }
                }
            }
            .navigationTitle("SweetUI")
        }
    }
}

#Preview {
    ContentView()
}
