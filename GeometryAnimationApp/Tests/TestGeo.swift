//
//  TestGeo.swift
//  GeometryAnimationApp
//
//  Created by Aleksandr Rybachev on 20.06.2021.
//

import SwiftUI

struct TestGeo: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(
                geometry.size.width,
                geometry.size.height
            )
            let middle = size / 2
            
            ZStack {
                Circle()
                    .fill()
                    .frame(width: middle, height: middle)
            }
        }
        .frame(width: width, height: height)
    }
}

struct TestGeo_Previews: PreviewProvider {
    static var previews: some View {
        TestGeo(width: 200, height: 200)
    }
}
