//
//  ContentView.swift
//  WeatherSwiftUIPractice
//
//  Created by 류창휘 on 2022/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            MainCityWeatherView()
            TimeWeatherView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color.gray)
    }
}
