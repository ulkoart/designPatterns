//
//  ViewModel.swift
//  MVVM-1
//
//  Created by user on 01/09/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import Foundation


class ViewModel {
    
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
}
