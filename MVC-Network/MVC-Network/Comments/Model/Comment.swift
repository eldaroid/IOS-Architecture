//
//  Comment.swift
//  MVC-Network
//
//  Created by Эльдар Попов on 10.03.2021.
//

import Foundation

struct Comment: Decodable {
    let postId: Int
    let name: String
    let body: String
    let id: Int
    let email: String
    
    init?(dict: [String: AnyObject]){
        guard let postId = dict["postId"] as? Int,
              let name = dict["name"] as? String,
              let body = dict["body"] as? String,
              let id = dict["id"] as? Int,
              let email = dict["email"] as? String else { return nil}
        self.postId = postId
        self.name = name
        self.body = body
        self.id = id
        self.email = email
    }
//    "postId": 1,
//        "id": 5,
//        "name": "vero eaque aliquid doloribus et culpa",
//        "email": "Hayden@althea.biz",
//        "body": "harum non quasi et ratione\ntempore iure ex voluptates in ratione\nharum architecto fugit inventore cupiditate\nvoluptates magni quo et"
}
