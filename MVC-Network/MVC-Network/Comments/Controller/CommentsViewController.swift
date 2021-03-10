//
//  ViewController.swift
//  MVC-Network
//
//  Created by Эльдар Попов on 10.03.2021.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkService.shared.getData { (json) in
            
        }
    }
}

//extension CommentsViewController: UITableViewDelegate {
//    return 1
//}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) // as CommentCell
        return cell
    }
}
