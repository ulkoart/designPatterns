//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by user on 03/09/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
