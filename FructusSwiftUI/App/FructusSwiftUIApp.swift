//
//  FructusSwiftUIApp.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

@main
struct FructusSwiftUIApp: App {
    @AppStorage("isOnBoardingView") var isOnBoardingView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoardingView {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
