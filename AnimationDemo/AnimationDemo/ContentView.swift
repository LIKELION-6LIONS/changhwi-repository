//
//  ContentView.swift
//  AnimationDemo
//
//  Created by 류창휘 on 2022/10/31.
//

import SwiftUI

struct ContentView: View {
    var randomNumbers: RandomNumbers = RandomNumbers()
    @State private var section : Int = 1
    @State private var isFirstAnimating : Bool = false
    @State private var isSecondAnimating : Bool = false
    @State private var isThirdAnimating : Bool = false
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    section = 1
                    isSecondAnimating = false
                    isThirdAnimating = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                        isFirstAnimating = true
                    })
                }, label: {
                    Text("가로 막대 그래프")
                        .foregroundColor(section == 1 ? Color.black : Color.gray)
                        .padding()
                        .background(section == 1 ? Color.gray : nil)
                        .cornerRadius(10)
                })
                Button(action: {
                    section = 2
                    isFirstAnimating = false
                    isThirdAnimating = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                        isSecondAnimating = true
                    })
                }, label: {
                    Text("세로 막대 그래프")
                        .foregroundColor(section == 2 ? Color.black : Color.gray)
                        .padding()
                        .background(section == 2 ? Color.gray : nil)
                        .cornerRadius(10)
                })
                Button(action: {
                    section = 3
                    isFirstAnimating = false
                    isSecondAnimating = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                        isThirdAnimating = true
                    })
                }, label: {
                    Text("..?")
                        .foregroundColor(section == 3 ? Color.black : Color.gray)
                        .padding()
                        .background(section == 3 ? Color.gray : nil)
                        .cornerRadius(10)
                })
            }
            .bold()
            Spacer()
            VStack(alignment: .leading) {
                if section == 1 {
                    ForEach(randomNumbers.firstRandomArray, id: \.self) { number in
                        HStack() {
                            Text("\(number)")
                                .frame(width: 30)
                            Rectangle()
                                .frame(width: isFirstAnimating ? CGFloat(number) * 2 : 0, height: 20)
                                .animation(.easeInOut(duration: 2), value: isFirstAnimating)
                            Spacer()
                        }
                    }
                }
                else if section == 2 {
                    HStack(alignment: .top) {
                        ForEach(randomNumbers.secondRandomArray, id: \.self) { number in
                            VStack() {
                                Text("\(number)")
                                Rectangle().frame(width: 20, height: isSecondAnimating ? CGFloat(number) * 2 : 0)
                                    .animation(.easeInOut(duration: 2), value: isSecondAnimating)
                            }
                        }
                    }
                }
                else if section == 3 {
                    HStack(alignment: .top) {
                        ForEach(randomNumbers.thirdRandomArray, id: \.self) { number in
                            VStack() {
                                Rectangle().frame(width: 20, height: isThirdAnimating ? CGFloat(number) * 2 : 0)
                                    .animation(.easeInOut(duration: 2), value: isThirdAnimating)
                                Text("\(number)")
                            }
                        }
                    }
                }
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//Button(action: {
//    withAnimation(.linear(duration: 1).repeatForever(autoreverses: true)) {
//        rotation = rotation < 360 ? rotation + 60 : 0
//    }
//    scale = scale < 2.0 ? scale + 0.3 : 1
////                rotation = rotation < 360 ? rotation + 60 : 0
////                scale = scale < 2.0 ? scale + 0.3 : 1
//}, label: {
//    Text("Click to animate")
//        .scaleEffect(scale)
//        .rotationEffect(.degrees(rotation))
////                    .animation(.easeInOut(duration: 1), value: rotation)
//})

//Button(action: {
//    rotation = rotation < 360 ? rotation + 60 : 0
//    scale = scale < 2.0 ? scale + 0.3 : 1
//    self.isSpinning.toggle()
//}, label: {
//    Text("돌려돌려 돌림판")
//        .rotationEffect(.degrees(rotation))
//        .scaleEffect(scale)
//        .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
//})
////            ZStack {
////                Circle()
////                    .stroke(lineWidth: 2)
////                    .foregroundColor(Color.blue)
////                    .frame(width: 360, height: 360)
////                Image(systemName: "forward.fill")
////                    .font(.largeTitle)
////                    .offset(y: -180)
////                    .rotationEffect(.degrees(isSpinning ? 0 : 360))
////                    .animation(Animation.linear(duration: 5).repeatForever().repeatForever(autoreverses: false))
////            }
//Toggle(isOn: $visibility.animation(.easeInOut(duration:2))) {
//    Text("Show/Hide Button")
//}
//if visibility {
//    Button(action: {}) {
//        Text("Example Button")
//    }
//    .font(.largeTitle)
//}
