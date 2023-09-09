//
//  StartButtonView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: PROPERTY
    @AppStorage("isOnBoardingView") var isOnBoardingView: Bool = false
    // MARK: BODY
    var body: some View {
        Button {
            isOnBoardingView = false
        } label: {
            HStack(spacing: 8, content: {
                Text("START")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            })
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule(style: .continuous).strokeBorder(Color.white, lineWidth: 2))
        } // BUTTON
        .accentColor(.white)
    }
}
    // MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
