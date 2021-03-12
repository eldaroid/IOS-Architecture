//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Эльдар Попов on 05.03.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var viewModel: TableViewViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel = ViewModel()
        
        viewModel?.new_description.bind(listener: { (listen) in
            for i in 0..<listen.count {
                guard let listen = listen[i] else { return }
                self.viewModel?.profiles[i] = listen
            }
            print(self.viewModel!.profiles)
            self.tableView.reloadData()
        })

        // delay for data binding
        viewModel?.delay(delay: 1.0) { [unowned self] in
            self.viewModel?.new_description.value = [
                Profile(name: "Nikita", secondName: "Elizarov", age: 99),
                Profile(name: "Eldar", secondName: "Popov", age: 88),
                Profile(name: "Anastasia", secondName: "Klimova", age: 77),
                Profile(name: "Ilya", secondName: "Kravetz", age: 66)]
        }
    }

    // по умолчанию так и так 1 секция возвращается
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRow() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        guard let viewModel = viewModel else { return UITableViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        cell.viewModel = cellViewModel
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        viewModel.selectRow(atIndexPath: indexPath)
        
        // осуществить переход на другую view`ху
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    // нам надо подготовить этот переход,
    // где мы должны сгенерировать ViewModel и передать на новый экран
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else { return }
        
        if identifier == "detailSegue" {
            if let dvc = segue.destination as? DetailViewController {
                dvc.viewModel = viewModel.viewModelForSelectedRow()
            }
                
        }
    }
}
