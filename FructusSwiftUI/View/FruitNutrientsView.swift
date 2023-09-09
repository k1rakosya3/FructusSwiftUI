//
//  FruitNutrientsView.swift
//  FructusSwiftUI
//
//  Created by Admin on 09.09.23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: PROPERTY
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: BODY
    var body: some View {
        
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            } // DisClosureGroup
        } // BOX
    }
}
    // MARK: PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitisData.fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 320, height: 600))
            .padding()
    }
}
