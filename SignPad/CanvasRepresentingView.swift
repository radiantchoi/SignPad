//
//  CanvasRepresentingView.swift
//  SignPad
//
//  Created by Gordon Choi on 2023/06/04.
//

import PencilKit
import SwiftUI

struct CanvasRepresentingView: UIViewRepresentable {
    @Binding var isUsingMarker: Bool
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvas = PKCanvasView()
        canvas.tool = changeTool()
        return canvas
    }
    
    func updateUIView(_ canvas: PKCanvasView, context: Context) {
        canvas.tool = changeTool()
    }
    
    private func changeTool() -> PKTool {
        return isUsingMarker
        ? PKInkingTool(.marker, color: .black, width: 30)
        : PKEraserTool(.bitmap, width: 50)
    }
}
