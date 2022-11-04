//
//  ContentView.swift
//  TapCounter
//
//  Created by 류창휘 on 2022/11/01.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    //드레그
    @GestureState private var offset: CGSize = .zero
    let drag = DragGesture()

    
    @State private var timeCount = 0
    //1초씩 증가하는 타이머
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State private var count : Int = 0
    @State private var playState : Bool = false
    
    
    @GestureState var isLongPressed = false
    
    var body: some View {
        let playPausePress = LongPressGesture(minimumDuration: 2.0)
            .onChanged({ _ in
            })
            .onEnded { _ in
                self.playState.toggle()
            }
            .updating($isLongPressed) { (value, state, transaction) in
                state = value //
            }

        
        
        let drag = DragGesture()
            .updating($offset) { dragValue, state, transaction in
                state = dragValue.translation
                if state.height < -150 {
                    timeCount = 0
                    print("성공")
                }
                print(state.height)
                if state.width > 160 {
                    timeCount += 5
                }
                if state.width < -160 {
                    timeCount -= 5
                }
            }
        
        return NavigationView {
            VStack {
                //숫자 라벨
                Text("카운트 \(timeCount)")
                    .font(.system(size: 60))
                    .bold()
                    .onReceive(timer) { _ in
                        if playState == true {
                            timeCount += 1
                        }
//                        if isLongPressed == true {
//                            timeCount += 5
//                        }
                    }
                
                //재생, 멈춤 이미지
                ZStack {
                    Circle()
                        .stroke(Color.yellow, lineWidth: 7)
                        .frame(width: 100)
                        .scaleEffect(isLongPressed ? 1.7 : 1)
                        .gesture(playPausePress)
                        .animation(.easeOut, value: isLongPressed)
                    Image(systemName: playState ? "pause.circle.fill" : "play.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(playState ? .blue : .red)
                        .foregroundColor(.accentColor)
                    .gesture(playPausePress)
                }
                Spacer()
                //종료
                Image(systemName: "trash.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 50)
                HStack {
                    Image(systemName: "minus")
                        .resizable()
                        .frame(width: 50, height: 10)
                    Spacer()
                    Image(systemName: "timer")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .offset(x: offset.width, y: offset.height)
                        .gesture(drag)
                    Spacer()
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
