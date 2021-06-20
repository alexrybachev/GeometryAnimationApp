//
//  TestShapes.swift
//  GeometryAnimationApp
//
//  Created by Aleksandr Rybachev on 20.06.2021.
//

import SwiftUI

struct TestShapes: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let part = width / 4
            
            Path { path in
                path.addLines([
                    .init(x: part * 2, y: part),
                    .init(x: part, y: 0),
                    .init(x: 0, y: part),
                    .init(x: part, y: part * 2),
                    .init(x: part * 3, y: 0),
                    .init(x: part * 4, y: part),
                    .init(x: part * 3, y: part * 2),
                    .init(x: part * 2, y: part)
                ])
            }
            .trim(from: 0.3, to: 1)
            .scale(1.5)
            .stroke(Color.black, lineWidth: 3)
        }
        .frame(width: width, height: height)
//        .trim(from: 0.25, to: 1.0)
//        .scale(50, anchor: .topLeading)
//        .stroke(Color.black, lineWidth: 3)
    }
}

struct TestShapes_Previews: PreviewProvider {
    static var previews: some View {
        TestShapes(width: 200, height: 200)
    }
}
