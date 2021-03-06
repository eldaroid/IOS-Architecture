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
}
