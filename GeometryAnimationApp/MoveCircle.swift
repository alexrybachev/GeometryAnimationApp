//
//  MoveCircle.swift
//  GeometryAnimationApp
//
//  Created by Aleksandr Rybachev on 20.06.2021.
//

import SwiftUI

struct MoveCircle: View {
    @State private var rotation: Double = 0
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(
                geometry.size.width,
                geometry.size.height
            )
            let middle = size / 2
            let maxDiameter = size * 0.8
            let minCircle = maxDiameter / 7
            let gap = minCircle / 3
            
            let color = RadialGradient(
                gradient: Gradient(colors: [Color.yellow, Color.red]),
                center: .center,
                startRadius: 0,
                endRadius: middle
            )
            
            Circle()
                .opacity(1)
                .overlay(
                    ZStack {
                        Circle()
                            .fill(color)
                            .frame(width: minCircle, height: minCircle)
                        ForEach(0..<7) { iteration in
                            Circle()
                                .trim(from: 0.0, to: 0.1 + CGFloat(iteration / 7))
                                .stroke(color, style: StrokeStyle(lineWidth: minCircle / 3, lineCap: .round))
                                .frame(
                                    width: gap * 2 + minCircle + CGFloat(iteration) * minCircle,
                                    height: gap * 2 + minCircle + CGFloat(iteration) * minCircle
                                )
                                .rotationEffect(.degrees(rotation))
                                .animation(
                                    Animation.linear(duration: 3 / Double(7 - iteration))
                                        .repeatForever(autoreverses: false)
                                )
                        }
                    }
                )
                .frame(width: width, height: height)
        }
        .frame(width: width, height: height)
        .onAppear() {
            rotation = 360
        }
    }
}

struct MoveCircle_Previews: PreviewProvider {
    static var previews: some View {
        MoveCircle(width: 330, height: 330)
    }
}
