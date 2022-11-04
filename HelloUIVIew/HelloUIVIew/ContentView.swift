//
//  ContentView.swift
//  HelloUIVIew
//
//  Created by 류창휘 on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
    @State var imagePickerVisible : Bool = false
    @State var selectedImage : Image? = Image(systemName: "photo")
    var body: some View {
        ZStack {
            VStack {
                selectedImage?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button {
                    imagePickerVisible.toggle()
                } label: {
                    Text("Select an Image")
                        .font(.largeTitle)
                }
                
            }
            .padding()
            if (imagePickerVisible) {
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
