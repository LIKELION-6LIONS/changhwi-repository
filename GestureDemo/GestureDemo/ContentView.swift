//
//  ContentView.swift
//  GestureDemo
//
//  Created by 류창휘 on 2022/11/01.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var offset : CGSize = .zero
    @GestureState private var longPress : Bool = false
    
    let tap = TapGesture().onEnded({ _ in
        print("touch")
    })
    var body: some View {
        let drag = DragGesture()
            .updating($offset) { dragvalue, state, transaction in
                state = dragvalue.translation
            }
            .onEnded { _ in
                print("drag")
            }
        let longPressAndDrag = LongPressGesture(minimumDuration: 120).updating($longPress) { value, state, transition in
            state = value
        }.simultaneously(with: DragGesture())
            .updating($offset) { value, state, transition in
                state = value.second?.translation ?? .zero
            }
        return VStack {
            Spacer()
            Image(systemName: "hand.point.right.fill").gesture(tap)
            Spacer()
            Image(systemName: "hand.point.right.fill")
                .resizable()
                .offset(offset)
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
