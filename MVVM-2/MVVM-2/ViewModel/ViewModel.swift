//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 06.03.2021.
//

import Foundation

class ViewModel: TableViewViewModelType {
    func numberOfRow() ->  Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    } 
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Selman", age: 55)]
}
