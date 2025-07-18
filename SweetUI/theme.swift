//
//  theme.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//

import SwiftUI

// MARK: - Color Palette
extension Color {
    static let cupcakePink = Color(red: 1.0, green: 0.75, blue: 0.8)
    static let cupcakeCream = Color(red: 1.0, green: 0.95, blue: 0.9)
    static let cupcakeChocolate = Color(red: 0.4, green: 0.25, blue: 0.2)
    static let cupcakeMint = Color(red: 0.75, green: 1.0, blue: 0.9)
}

// MARK: - Fonts (All Bold for Branding)
extension Font {
    static let cupcakeTitle = Font.system(size: 28, weight: .heavy, design: .rounded)            // App logo title
    static let cupcakeSectionTitle = Font.system(size: 20, weight: .bold, design: .rounded)      // Section headers
    static let cupcakeBody = Font.system(size: 17, weight: .semibold, design: .rounded)          // Primary text
    static let cupcakeSecondary = Font.system(size: 15, weight: .medium, design: .rounded)       // Frosting/sprinkle labels
}

// MARK: - Reusable Button Modifier
struct CupcakeButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.cupcakePink)
            .foregroundColor(.white)
            .font(.cupcakeBody.bold()) // Ensures all buttons are bold
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: .cupcakePink.opacity(0.3), radius: 6, x: 0, y: 3)
    }
}

extension View {
    func cupcakeButton() -> some View {
        self.modifier(CupcakeButtonStyle())
    }
}

// MARK: - Reusable Card Modifier (Cupcake/Address Blocks)
struct CupcakeCard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.cupcakeCream)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

extension View {
    func cupcakeCard() -> some View {
        self.modifier(CupcakeCard())
    }
}

// MARK: - App Header View (Reusable)
struct CupcakeHeaderView: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "birthday.cake.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.cupcakePink)

            Text("Sweet UI")
                .font(.cupcakeTitle)
                .foregroundColor(.cupcakeChocolate)
        }
        .padding(.vertical)
    }
}


