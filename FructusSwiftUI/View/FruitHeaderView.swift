//
//  FruitHeaderView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: PROPERTY
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.14),radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        } // ZSTACK
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

    // MARK: PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: FruitisData.fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
