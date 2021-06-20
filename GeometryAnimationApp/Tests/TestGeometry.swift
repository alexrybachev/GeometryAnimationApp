//
//  TestGeometry.swift
//  GeometryAnimationApp
//
//  Created by Aleksandr Rybachev on 20.06.2021.
//

import SwiftUI

struct TestGeometry: View {
    var body: some View {
        GeometryReader { gr in
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.pink)
                .overlay(
                    Text("X: ")
                )
        }
    }
}

struct TestGeometry_Previews: PreviewProvider {
    static var previews: some View {
        TestGeometry()
    }
}
