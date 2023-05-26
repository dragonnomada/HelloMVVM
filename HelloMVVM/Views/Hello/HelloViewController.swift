//
//  HelloViewController.swift
//  HelloMVVM
//
//  Created by Alan Badillo Salas on 26/05/23.
//

import UIKit

class HelloViewController: UIViewController {
    
    lazy var viewModel: HelloViewModel = {
        let viewModel = HelloViewModel(self)
        
        return viewModel
    }()
    
    var addHandler: (String) -> Void = {_ in}
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Hello Home"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .done, target: self, action: #selector(addAction))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func addAction(sender: UIBarButtonItem) {
        addHandler("This is a message")
    }

    @IBAction func helloAction(_ sender: Any) {
        viewModel.sayHello()
    }

}

extension HelloViewController: HelloDelegate {
    
    func updateTitle(title: String) {
        helloLabel.text = title
    }
    
}
