//
//  CheckoutView.swift
//  SweetUI
//
//  Created by shalinth adithyan on 15/07/25.
//

import SwiftUI

struct CheckoutView: View {
    var order : Order
    var body: some View {
        ScrollView{
            VStack{
                AsyncImage(url: URL(string:"https://hws.dev/img/cupcakes@3x.jpg"),scale: 3){ image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height:233)
                
                Text("Your total cost is \(order.cost, format:.currency(code: "INR"))")
                    .font(.title)
                
                Button("Place Order", action: {})
                    .padding(.vertical)
            }
        }
        .navigationTitle(Text("Checkout"))
        .navigationBarTitleDisplayMode(.inline)
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    CheckoutView(order: Order())
}
