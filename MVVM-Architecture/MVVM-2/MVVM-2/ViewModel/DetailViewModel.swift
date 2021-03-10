//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 07.03.2021.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age)")
    }

    init(profile: Profile) {
        self.profile = profile
    }

}
