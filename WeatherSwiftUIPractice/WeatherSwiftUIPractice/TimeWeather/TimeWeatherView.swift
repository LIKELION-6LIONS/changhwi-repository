//
//  TimeWeatherView.swift
//  WeatherSwiftUIPractice
//
//  Created by 류창휘 on 2022/10/11.
//

import SwiftUI

struct TimeWeatherView: View {
    var body: some View {
        HStack {
            //8
            VStack(spacing: 10) {
                Text("8AM")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                Text("63°")
                    .foregroundColor(.white)
            }
            Spacer()
            //9
            VStack(spacing: 10) {
                Text("9AM")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                Text("63°")
                    .foregroundColor(.white)
            }
            Spacer()
            //10
            VStack(spacing: 10) {
                Text("10AM")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                Text("63°")
                    .foregroundColor(.white)
            }
            Spacer()
            //11
            VStack(spacing: 10) {
                Text("11AM")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Image(systemName: "cloud.sun.fill")
                    .foregroundColor(.yellow)
                Text("63°")
                    .foregroundColor(.white)
            }
            Spacer()
            //12
            VStack(spacing: 10) {
                Text("12AM")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                Text("63°")
                    .foregroundColor(.white)
            }
        }
    }
}

struct TimeWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        TimeWeatherView()
            .background(Color.gray)
            .previewLayout(.sizeThatFits)
    }
}
