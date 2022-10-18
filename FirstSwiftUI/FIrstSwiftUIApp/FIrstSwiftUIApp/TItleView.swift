//
//  TItleView.swift
//  FIrstSwiftUIApp
//
//  Created by 류창휘 on 2022/10/18.
//

import SwiftUI

struct TItleView: View {
    var body: some View {
        VStack {
            Image(systemName: "hammer")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            HStack {
                Text("LIKELION")
                    .foregroundColor(.purple)
                    .font(.largeTitle)
                .bold()
                Text("회고 6조")
                    .foregroundColor(.brown)
                    .font(.largeTitle)
            }
        }
    }
}

struct TItleView_Previews: PreviewProvider {
    static var previews: some View {
        TItleView()
    }
}
