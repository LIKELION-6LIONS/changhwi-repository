//
//  ContentView.swift
//  FIrstSwiftUIApp
//
//  Created by 류창휘 on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            TItleView()
                .modifier(SettingBackground())
            Divider()
            NamesView()
                .modifier(SettingBackground())
                .foregroundColor(.yellow)
            HStack {
                Text("패딩")
                    .padding()
                    .border(Color.yellow)
                    .padding()
                    .border(Color.black)
                    .padding()
                    .border(Color.red)
                    .modifier(SettingBackground())
                Text("패딩")
                    .padding()
                    .border(Color.yellow)
                    .padding()
                    .border(Color.black)
                    .padding()
                    .border(Color.red)
                    .modifier(SettingBackground())
                
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 14")
                .previewDisplayName("iPhone 14 Pro")
            ContentView()
                .previewDevice("iPhone SE (3rd generation)")
        }
    }
}
