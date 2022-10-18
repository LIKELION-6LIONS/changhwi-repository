//
//  NamesView.swift
//  FIrstSwiftUIApp
//
//  Created by 류창휘 on 2022/10/18.
//

import SwiftUI

struct NamesView: View {
    var body: some View {
        VStack {
            HStack {
                Text("덕훈님")
                Text("현호님")
                Text("혜민님")
                Text("창휘님")
                Text("동훈님")
            }
            HStack {
                Text("예리님")
                Text("소민님")
                Text("학진님")
                Text("태영님")
            }
            Button(action: {print("dd") }, label: {
                Image(systemName: "heart")
            })
        }
        .modifier(StandardName())
    }
}
struct StandardName : ViewModifier {
    func body(content: Content) -> some View {
        return content
            .foregroundColor(.purple)
            .font(.body)
    }
}
struct SettingBackground : ViewModifier {
    func body(content: Content) -> some View {
        return content
            .background(Color.red)
    }
}

struct NamesView_Previews: PreviewProvider {
    static var previews: some View {
        NamesView()
            .previewLayout(.sizeThatFits)
    }
}
