//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 07.03.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?

    // не совсем подходило viewDidLoad, потому что такой view если один раз загрузился, то больше не меняется
    // viewWillAppear - это метод, который отрабатывает до того,
    // как view появится на экране (то есть он загружен, но еще не появился)
    // и этот метод отрабатывает каждый раз, когда появляется экран
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = String(describing: viewModel.description)
    }

}
