//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 06.03.2021.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRow() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    var profiles: [Profile] { get set }
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
    
    var new_description: Box<Profile?> { get set }
    func delay(delay: Double, closure: @escaping () -> () )
}
