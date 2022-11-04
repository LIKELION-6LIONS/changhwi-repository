//
//  MainCityWeatherView.swift
//  WeatherSwiftUIPractice
//
//  Created by 류창휘 on 2022/10/11.
//

import SwiftUI

struct MainCityWeatherView: View {
    var body: some View {
        HStack {
            Spacer().frame(width: 10)
            CityTemperatureView()
                
            Spacer()
            CityTemperatureDetailView()
            Spacer().frame(width: 10)
        }
    }
}

struct MainCityWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        MainCityWeatherView()
            .background(Color(.gray))
            .previewLayout(.sizeThatFits)
    }
}
