//
//  NetworkError.swift
//  MVC-N
//
//  Created by user on 31/08/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import Foundation


enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
