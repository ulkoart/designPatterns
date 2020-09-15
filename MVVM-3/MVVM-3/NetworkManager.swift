//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by user on 07/09/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(complition: ([String]) -> ()) {
        complition(["Movie 1", "Movie 2", "Movie 3"])
    }
    
}
 
