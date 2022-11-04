//
//  LIstCel.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import SwiftUI

struct LIstCell: View {
    var car : Car
    var body: some View {
        NavigationLink(destination: CarDetail(selectedCar: car)) {
            HStack {
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        }
    }
}

struct LIstCel_Previews: PreviewProvider {
    static var previews: some View {
        LIstCell(car: carData.first!)
    }
}
