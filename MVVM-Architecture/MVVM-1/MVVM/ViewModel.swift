//
//  ViewModel.swift
//  MVVM
//
//  Created by Эльдар Попов on 05.03.2021.
//

import Foundation

class ViewModel {
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
}
