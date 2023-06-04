//
//  ContentView.swift
//  SignPad
//
//  Created by Gordon Choi on 2023/06/04.
//

import SwiftUI

struct ContentView: View {
    @State private var isUsingMarker = true
    
    var body: some View {
        NavigationStack {
            CanvasRepresentingView(isUsingMarker: $isUsingMarker)
                .padding()
                .navigationTitle("사인해주세요!")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(isUsingMarker ? "지우개" : "마커") {
                            isUsingMarker.toggle()
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPad Air (5th generation)")
    }
}
