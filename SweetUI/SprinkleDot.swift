//
//  SprinkleDot.swift
//  SweetUI
//
//  Created by shalinth adithyan on 18/07/25.
//
import SwiftUI

struct SprinkleDot: View {
    @State private var yOffset: CGFloat = -200
    private let xPosition = CGFloat.random(in: -150...150)
    private let size = CGFloat.random(in: 6...12)
    private let color = [Color.pink, Color.cupcakeMint, .yellow, .orange, .blue].randomElement()!

    var body: some View {
        Circle()
            .fill(color)
            .frame(width: size, height: size)
            .position(x: UIScreen.main.bounds.midX + xPosition, y: yOffset)
            .onAppear {
                withAnimation(Animation.linear(duration: Double.random(in: 3...6)).repeatForever(autoreverses: false)) {
                    yOffset = UIScreen.main.bounds.height + 100
                }
            }
    }
}

#Preview {
    SprinkleDot()
}
