//
//  HelloViewController.swift
//  HelloMVVM
//
//  Created by Alan Badillo Salas on 26/05/23.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Hello Home"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .done, target: self, action: #selector(addAction))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func addAction(sender: UIBarButtonItem) {
        print(sender)
    }

    @IBAction func helloAction(_ sender: Any) {
        helloLabel.text = "Hi there"
    }

}
