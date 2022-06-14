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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.textLabel.text = string
        }
        delay(delay: 5) {
            self.viewModel?.age.value = "some new value"
        }
        
    }
    
    private func delay(delay: Double, clouser: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            clouser()
        }
    }

}
