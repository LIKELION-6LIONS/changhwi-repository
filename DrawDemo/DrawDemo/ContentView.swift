//
//  ContentView.swift
//  DrawDemo
//
//  Created by 류창휘 on 2022/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Ellipse()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .overlay(Rectangle().frame(width: 50, height: 20), alignment: .bottom)
            Path { path in
                path.move(to: CGPoint(x: 10, y: 0))
                path.addLine(to: CGPoint(x: 10, y: 350))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.closeSubpath()
            }
            .fill(Color.green)
        }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
