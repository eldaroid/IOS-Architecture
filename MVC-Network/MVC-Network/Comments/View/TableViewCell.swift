//
//  TableViewCell.swift
//  MVC-Network
//
//  Created by Эльдар Попов on 10.03.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var tableView: UITextView!
 
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.tableView.text = comment.body
    }
}
