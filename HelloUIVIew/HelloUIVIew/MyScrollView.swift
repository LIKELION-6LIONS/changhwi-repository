//
//  MyScrollView.swift
//  HelloUIVIew
//
//  Created by 류창휘 on 2022/11/02.
//

import SwiftUI

struct MyScrollView: UIViewRepresentable {
    
    var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MyScrollView>) -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.delegate = context.coordinator
        
        scrollView.refreshControl = UIRefreshControl()
        
        // 아래에서 선언한 Coordinator 클래스의 함수를 통해
        // 값 업데이트에 대해 위로 스크롤하여 리프레쉬하는 기능 부분
        scrollView.refreshControl?.addTarget(context.coordinator, action:
            #selector(Coordinator.handleRefresh),
                                          for: .valueChanged)

        let myLabel = UILabel(frame:
                   CGRect(x: 0, y: 0, width: 300, height: 50))
        myLabel.text = text
        scrollView.addSubview(myLabel)
        return scrollView
    }
    
    func updateUIView(_ uiView: UIScrollView,
                      context: UIViewRepresentableContext<MyScrollView>) {
        
    }

    func makeCoordinator() -> Coordinator {
         Coordinator(self)
    }

    class Coordinator: NSObject, UIScrollViewDelegate {
        var control: MyScrollView

        init(_ control: MyScrollView) {
            self.control = control
        }
        
        // UIScrollViewDelegate 프로토콜 준수 내용에 포함
        // scrollVeiwDidScroll로 메서드 이름을 정확하게 작성해야 스크롤 시 이 메서드가 호출됨
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            print("View is Scrolling")
        }
        
        @objc func handleRefresh(sender: UIRefreshControl) {
            sender.endRefreshing()
        }
    }

}
