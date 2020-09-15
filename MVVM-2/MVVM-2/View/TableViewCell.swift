//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by user on 03/09/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }

}
