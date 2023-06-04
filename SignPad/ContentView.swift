//
//  ContentView.swift
//  SignPad
//
//  Created by Gordon Choi on 2023/06/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            CanvasRepresentingView()
                .padding()
                .navigationTitle("사인해주세요!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad Air (5th generation)")
    }
}
