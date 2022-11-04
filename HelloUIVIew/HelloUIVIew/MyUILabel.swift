//
//  MyUILabel.swift
//  HelloUIVIew
//
//  Created by 류창휘 on 2022/11/02.
//

import SwiftUI

struct MyUILabel : UIViewRepresentable {
    var text : String
    
    //UIview 기반 컴퍼넌트의 인스턴스 생성,
    //필요한 초기화 작업을 수행한 뒤 반환하는 역할
    func makeUIView(context: Context) -> UILabel {
        let myLabel = UILabel()
        myLabel.text = text
        return myLabel
    }
    
    //UIview 자체를 업데이트해야 하는 변경이
    //Swiftui 뷰에서 생길 때마다 호출
    func updateUIView(_ uiView: UILabel, context: Context) {
        //
    }
}
