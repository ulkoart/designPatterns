//
//  CommentCell.swift
//  MVC-N
//
//  Created by user on 31/08/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
    
}
