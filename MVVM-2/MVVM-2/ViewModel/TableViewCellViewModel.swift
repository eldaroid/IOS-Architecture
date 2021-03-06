//
//  TableViewViewModel.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 06.03.2021.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return "\(profile.age)"
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
