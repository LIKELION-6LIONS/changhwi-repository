//
//  CityTemperatureDetailView.swift
//  WeatherSwiftUIPractice
//
//  Created by 류창휘 on 2022/10/11.
//

import SwiftUI

struct CityTemperatureDetailView: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .foregroundColor(.yellow)
                .font(.system(size: 20))
            Text("맑음")
                .foregroundColor(.white)
                .font(.system(size: 20))
            Text("H:68°L42°")
                .foregroundColor(.white)
                .font(.system(size: 20))
        }
    }
}

struct CityTemperatureDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CityTemperatureDetailView()
            .background(Color(.gray))
            .previewLayout(.sizeThatFits)
    }
}
