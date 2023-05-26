//
//  HelloDetailViewController.swift
//  HelloMVVM
//
//  Created by Alan Badillo Salas on 26/05/23.
//

import UIKit

class HelloDetailViewController: UIViewController {

    lazy var viewModel: HelloDetailViewModel = {
        let viewModel = HelloDetailViewModel(view: self)
        
        return viewModel
    }()
    
    var message: String?
    
    var close: (Int) -> Void = {_ in}
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hello Detail"

        viewModel.showMessage(message: message ?? "???")
    }

    @IBAction func sendResultAction(_ sender: Any) {
        close(Int.random(in: 1...1000))
    }

}

extension HelloDetailViewController: HelloDetailDelegate {
    
    func updateLabel(text: String) {
        detailsLabel.text = text
    }
    
}
