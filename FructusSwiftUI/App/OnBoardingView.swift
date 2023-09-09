//
//  OnBoardingView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    var fruitis: [Fruit] = FruitisData.fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruitis) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    // MARK: PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruitis: FruitisData.fruitsData)
            .previewDevice("iPhone 13")
    }
}
