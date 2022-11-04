//
//  CarDetail.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import SwiftUI

struct CarDetail: View {
    let selectedCar : Car
    var body: some View {
        Form {
            Section(header: Text("Car Detils")) {
                Image(selectedCar.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text(selectedCar.name)
                    .font(.headline)
                
                Text(selectedCar.description)
                    .font(.body)
                HStack {
                    Text("Hybrid")
                        .font(.headline)
                        Spacer()
                    Image(systemName: selectedCar.isHybrid ? "checkmark.circle" : "xmark.circel")
                }
            }
        }
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(selectedCar: carData[0])
    }
}
