//
//  CityTempertureView.swift
//  WeatherSwiftUIPractice
//
//  Created by 류창휘 on 2022/10/11.
//

import SwiftUI

struct CityTemperatureView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("서울")
                .font(.system(size: 30))
                .foregroundColor(.white)
            Text("63°")
                .font(.system(size: 50))
                .foregroundColor(.white)
        }
    }
}

struct CityTempertureView_Previews: PreviewProvider {
    static var previews: some View {
        CityTemperatureView()
            .background(Color(.gray))
            .previewLayout(.sizeThatFits)
    }
}
