//
//  FruitCardView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: PROPERTYS
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 0.5
    
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20, content: {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                // FRUIT: TITLE
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // FRUIT HEADLINE
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 420)
                
                // FRUIT START
                StartButtonView()
            }) //: VSTACK
        } // ZSTack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 20)
    }
}

    // MARK: PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: FruitisData.fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
