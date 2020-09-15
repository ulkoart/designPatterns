//
//  DetailViewCellViewController.swift
//  MVVM-2
//
//  Created by user on 03/09/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var viewModel: DetailViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind(listener: { [unowned self] in
            guard let string = $0 else { return }
            self.textLabel.text = string
        })
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping ()-> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            closure()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
