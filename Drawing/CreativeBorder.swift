//
//  CreativeBorder.swift
//  Drawing
//
//  Created by FABRICIO ALVARENGA on 13/08/22.
//

import SwiftUI

struct CreativeBorder: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .frame(width: 300, height: 300)
                .border(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.20), width: 50)
            
            Capsule()
                .strokeBorder(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.3), lineWidth: 20)
                .frame(width: 300, height: 200)
        }
    }
}

struct CreativeBorder_Previews: PreviewProvider {
    static var previews: some View {
        CreativeBorder()
    }
}
