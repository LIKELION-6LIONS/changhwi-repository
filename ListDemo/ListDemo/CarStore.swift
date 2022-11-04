//
//  CarStore.swift
//  ListDemo
//
//  Created by 류창휘 on 2022/10/25.
//

import Foundation
import SwiftUI
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]
    init (cars: [Car] = []) {
        self.cars = cars
    }
}
