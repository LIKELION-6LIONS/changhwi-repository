//
//  PracticeView.swift
//  DrawDemo
//
//  Created by 류창휘 on 2022/10/27.
//

import SwiftUI

struct PracticeView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Circle()
                    .stroke(Color.blue, lineWidth: 7)
                    .frame(width: 100)
                    .padding(.horizontal, 5)
                Circle()
                    .stroke(Color.black, lineWidth: 7)
                    .frame(width: 100)
                    .padding(.horizontal, 5)
                Circle()
                    .stroke(Color.red, lineWidth: 7)
                    .frame(width: 100)
                    .padding(.horizontal, 5)
            }
            .offset(y: 60)
            HStack {
                Circle()
                    .trim(from: 0,to: 0.98)
                    .stroke(Color.yellow, lineWidth: 7)
                    .frame(width: 100)
                    .rotationEffect(Angle(degrees: 182))
                    .padding(.horizontal, 5)
                Circle()
                    .stroke(Color.green, lineWidth: 7)
                    .frame(width: 100)
                    .padding(.horizontal, 5)
            }
            StarShape()
                .fill(Color.red)
                .frame(width: 300, height: 300)
        }
    }
}
struct StarShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 100, y:  0))
        path.addLine(to: CGPoint(x: 140, y:  -100))
        path.addLine(to: CGPoint(x: 200, y: 0))
        path.addLine(to: CGPoint(x: 300, y: 0))
        path.addLine(to: CGPoint(x: 240, y: 80))
        path.addLine(to: CGPoint(x: 280, y: 200))
        path.addLine(to: CGPoint(x: 140, y: 120))
        path.addLine(to: CGPoint(x: 50, y: 200))
        path.addLine(to: CGPoint(x: 100, y: 80))
        path.closeSubpath()
        return path
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
