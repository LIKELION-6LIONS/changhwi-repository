//
//  RandomNumbers.swift
//  AnimationDemo
//
//  Created by 류창휘 on 2022/10/31.
//

import Foundation

struct RandomNumbers {
    var firstRandomArray : [Int] = []
    var secondRandomArray : [Int] = []
    var thirdRandomArray : [Int] = []
    init() {
        for _ in 1...10 {
            let randomInt : Int = Int.random(in: 0...99)
            firstRandomArray.append(randomInt)
        }
        for _ in 1...10 {
            let randomInt : Int = Int.random(in: 0...99)
            secondRandomArray.append(randomInt)
        }
        for _ in 1...10 {
            let randomInt : Int = Int.random(in: 0...99)
            thirdRandomArray.append(randomInt)
        }
    }
}
