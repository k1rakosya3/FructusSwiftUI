//
//  ContentView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTYS
    @State private var isShowingSettings = false
    var fruites: [Fruit] = FruitisData.fruitsData
    // MARK: BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruites.shuffled()) { fruite in
                    NavigationLink(destination: FruitDetailView(fruit: fruite)) {
                        FruitRowView(fruit: fruite)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruitis")
            .navigationBarItems(trailing:
            Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }) // BUTTON
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        }
    }
}
    // MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
