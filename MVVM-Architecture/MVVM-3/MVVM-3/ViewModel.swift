//
//  ViewModel.swift
//  MVVM-3
//
//  Created by Эльдар Попов on 09.03.2021.
//

import Foundation

class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    var numberOfRowInSection: Int {
        return movies?.count ?? 0
    }
    
    func fetchMovies(completion: @escaping() -> ())
    {
        networkManager.fetchMovies { [weak self] (movies) in
            self?.movies = movies
            completion()
        }
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return "" }
        return movies[indexPath.row]
    }
}
