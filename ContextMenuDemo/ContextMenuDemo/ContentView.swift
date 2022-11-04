//
//  ContentView.swift
//  ContextMenuDemo
//
//  Created by 류창휘 on 2022/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var foregroundColor: Color = .white
    @State private var backgroundColor : Color = .purple
    var body: some View {
        VStack {

            Text("Hello, world!")
                .font(.largeTitle)
                .padding()
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .contextMenu {
                    Button(action: {
                        print("메뉴 선택")
                        self.foregroundColor = .black
                        self.backgroundColor = .white
                    }) {
                        Text("Normal colors")
                        Image(systemName: "painbrush")
                    }
                    Button(action: {
                        print("메뉴 선택")
                        self.foregroundColor = .white
                        self.backgroundColor = .purple
                    }) {
                        Text("Purple colors")
                        Image(systemName: "painbrush.fill")
                    }
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
