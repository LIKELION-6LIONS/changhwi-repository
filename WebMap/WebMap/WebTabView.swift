//
//  WebTabView.swift
//  WebMap
//
//  Created by 류창휘 on 2022/11/02.
//

import SwiftUI

struct WebTabView: View {
    @State private var isShowingSheet : Bool = false
    var body: some View {
        VStack {
            Button {
                isShowingSheet.toggle()
            } label: {
                Text("Open Web Browser")
            }
            
        }
        .sheet(isPresented: $isShowingSheet, onDismiss: didDismiss) {
            WebSheetView()
        }
    }
    func didDismiss() {
        //
    }
}
struct WebSheetView : View {
    var body: some View {
        SafariView(url: URL(string: "https://naver.com")!)
    }
}

struct WebTabView_Previews: PreviewProvider {
    static var previews: some View {
        WebTabView()
    }
}
