//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 06.03.2021.
//

import Foundation

protocol TableViewModelType {
    var profiles: [Profile] { get }
    var numberOfRow: Int { get }
}
