//
//  CanvasRepresentingView.swift
//  SignPad
//
//  Created by Gordon Choi on 2023/06/04.
//

import PencilKit
import SwiftUI

struct CanvasRepresentingView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        canvas.tool = PKInkingTool(.marker, color: .black, width: 30)
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
}
