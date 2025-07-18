//
//  SprinkleStartView.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//

import SwiftUI

struct SprinkleStartView: View {
    @State private var showSprinkles = false
    @State private var navigateToMain = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.cupcakeCream.ignoresSafeArea()

                VStack(spacing: 20) {
                    Spacer()

                    Image(systemName: "birthday.cake.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.cupcakePink)
                        .scaleEffect(showSprinkles ? 1.2 : 0.9)
                        .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: showSprinkles)

                    Text("Cupcake Corner")
                        .font(.cupcakeTitle)
                        .foregroundColor(.cupcakeChocolate)

                    Spacer()

                    Button("Start Ordering") {
                        navigateToMain = true
                    }
                    .cupcakeButton()
                    .padding(.horizontal)

                    NavigationLink(destination: ContentView(), isActive: $navigateToMain) {
                        EmptyView()
                    }
                    .hidden()
                }

                if showSprinkles {
                    ForEach(0..<25, id: \.self) { _ in
                        SprinkleDot()
                    }
                }
            }
            .onAppear {
                showSprinkles = true
            }
        }
    }
}

#Preview {
    SprinkleStartView()
}
