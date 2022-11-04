//
//  DataInput.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import SwiftUI

struct DataInput: View {
    var title: String
    @Binding var userInput : String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

//struct DataInput_Previews: PreviewProvider {
//    static var previews: some View {
//        DataInput(title: <#String#>, userInput: <#Binding<String>#>)
//    }
//}
