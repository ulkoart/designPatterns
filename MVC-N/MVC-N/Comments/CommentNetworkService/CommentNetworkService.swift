//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by user on 31/08/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import Foundation


class CommentNetworkService {
    private init() {}
    
    static func getComments(complition: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                complition(response)
            } catch {
                print(error)
            }
        }
    }
}
