//
//  HelloViewModel.swift
//  HelloMVVM
//
//  Created by Alan Badillo Salas on 26/05/23.
//

import Foundation

protocol HelloDelegate {
    
    func updateTitle(title: String)
    
}

class HelloViewModel: NSObject {
    
    var view: HelloDelegate?
    
    init(view: HelloDelegate) {
        self.view = view
    }
    
    func sayHello() {
        view?.updateTitle(title: "Hi there 😁")
    }
    
}
