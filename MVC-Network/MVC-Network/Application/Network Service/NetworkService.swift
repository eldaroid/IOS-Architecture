//
//  NetworkService.swift
//  MVC-Network
//
//  Created by Эльдар Попов on 10.03.2021.
//

import Foundation

class NetworkService {
    
    init() {
        
    }
    
    static let shared = NetworkService()
   
    public func getData2(completion: @escaping (Any) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else {return}
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
                    
            if let data = data,
                let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments){
            print(json)
                
            }
            
            do {
                            
                let categoryJSON = try JSONDecoder().decode([Comment].self, from: data!)
                print(categoryJSON)
                        
                } catch let error {
                    print(error)
                }
            }.resume()
    }
    
    public func getData( completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        // мы получили данные
        session.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")!) { (data, responce, error) in
            guard let data = data else { return }
            do {
                // мы получили json
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                // так как completion ведет к обновлению интерфейса, то мы должны использовать очередь
                print(json)
//                DispatchQueue.main.async {
//                    completion(json)
//                }
            }
            catch {
                print(error)
            }
        }.resume()
    }
    
}
