//
//  Delay.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 09.03.2021.
//

import Foundation

class Delay {

    private func delay(delay: Double, closure: @escaping () -> () ) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
}
