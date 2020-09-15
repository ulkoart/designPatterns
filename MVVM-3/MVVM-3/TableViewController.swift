//
//  ViewController.swift
//  MVVM-3
//
//  Created by user on 07/09/2020.
//  Copyright © 2020 Artem Ulko. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMovies {
            [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)
        return cell
    }


}

