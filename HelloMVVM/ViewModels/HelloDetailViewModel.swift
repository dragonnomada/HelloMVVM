//
//  HelloDetailViewModel.swift
//  HelloMVVM
//
//  Created by Alan Badillo Salas on 26/05/23.
//

import Foundation

protocol HelloDetailDelegate: AnyObject {
    
    func updateLabel(text: String)
    
}

class HelloDetailViewModel {
    
    let view: HelloDetailDelegate
    
    init(view: HelloDetailDelegate) {
        self.view = view
    }
    
    func showMessage(message: String) {
        view.updateLabel(text: "Your message is: \(message)")
    }
    
}
