//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 06.03.2021.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
