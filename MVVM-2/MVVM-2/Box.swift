//
//  Box.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 08.03.2021.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    
    // св-во за который происходит наблюдение
    var listener: Listener?
    
    // значение за которым у нас будет наблюдать наблюдатель
    var value: T {
        didSet {
            // сообщаем об изменениях
            listener?(value)
        }
    }
    
    // связать свойства с наблюдателем
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
