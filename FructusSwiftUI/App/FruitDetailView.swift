//
//  FruitDetailView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: PROPERTYS
    var fruit: Fruit
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //: HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourseLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } // VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
            
        } //: NAVIGATION
    }
}

    // MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: FruitisData.fruitsData[0])
    }
}
