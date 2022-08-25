//
//  Arrow.swift
//  Drawing
//
//  Created by FABRICIO ALVARENGA on 14/08/22.
//

import SwiftUI

struct ArrowShape: Shape {
    var width: Double
    let height: Double = 200
    
    var animatableData: Double {
        get { width }
        set { width = newValue }
    }
    
    init(width: Double) {
        self.width = width
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY / 3))
        path.addLine(to: CGPoint(x: rect.midX / 2, y: rect.midY / 1.5))
        path.addLine(to: CGPoint(x: (rect.maxX - rect.midX / 2), y: rect.midY / 1.5))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY / 3))
        path.closeSubpath()

        path.addRect(CGRect(x: rect.midX - (width / 2), y: rect.midY / 1.5, width: width, height: height))
        
        return path
    }
}

struct Arrow: View {
    @State private var width: Double = 30
    
    var body: some View {
        VStack {
            ArrowShape(width: width)
                .stroke(lineWidth: width)
                .onTapGesture {
                    withAnimation {
                        width = Double.random(in: 1...50)
                    }
                }
            
//            Slider(value: $width, in: 1...50)
        }
    }
}

struct Arrow_Previews: PreviewProvider {
    static var previews: some View {
        Arrow()
    }
}
