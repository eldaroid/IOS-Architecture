//
//  Box.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 08.03.2021.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T, T) -> ()
    
    var listener: Listener?
    
    var value: [T] {
        didSet {
            listener!(value[0], value[1])
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value[0], value[1])
    }
    
    init(_ value: [T]) {
        self.value = value
    }
}
