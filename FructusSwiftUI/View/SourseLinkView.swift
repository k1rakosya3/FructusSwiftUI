//
//  SourseLinkView.swift
//  FructusSwiftUI
//
//  Created by Admin on 08.09.23.
//

import SwiftUI

struct SourseLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourseLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourseLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
