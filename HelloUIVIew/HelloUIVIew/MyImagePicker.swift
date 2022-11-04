//
//  MyImagePicker.swift
//  HelloUIVIew
//
//  Created by 류창휘 on 2022/11/02.
//

import SwiftUI


struct MyImagePicker: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
    }
    
    @Binding var imagePickerVisible : Bool
    @Binding var selectedImage: Image?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MyImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<MyImagePicker>) {
        
    }
    
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        @Binding var imagePickerVisible : Bool
        @Binding var selectedImage: Image?
        
        init(imagePickerVisible: Binding<Bool>, selectedImage: Binding<Image?>) {
            _imagePickerVisible = imagePickerVisible
            _selectedImage = selectedImage
        }
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            imagePickerVisible = false
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            selectedImage = Image(uiImage: image)
            imagePickerVisible = false
        }
    }
    
}

