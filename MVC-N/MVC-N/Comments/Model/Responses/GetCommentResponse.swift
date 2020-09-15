//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by user on 31/08/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        
        for dictianary in array {
            guard let comment = Comment(dict: dictianary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
