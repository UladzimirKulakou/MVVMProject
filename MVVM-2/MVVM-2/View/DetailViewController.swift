//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Владимир  on 13.06.22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!

    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        
        self.textLabel.text = viewModel.description
    }

}