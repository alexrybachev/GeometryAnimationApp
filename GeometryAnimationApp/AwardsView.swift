//
//  AwardsView.swift
//  GeometryAnimationApp
//
//  Created by Aleksandr Rybachev on 19.06.2021.
//

import SwiftUI

struct AwardsView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangle(width: 250, height: 250)
                    PathView(width: 250, height: 250)
                    CurvesView(width: 250, height: 250)
                    MoveCircle(width: 250, height: 250)
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
