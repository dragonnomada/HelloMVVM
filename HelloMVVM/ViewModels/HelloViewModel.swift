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
    
    let view: HelloDelegate
    
    init(_ view: HelloDelegate) {
        self.view = view
    }
    
    func sayHello() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        view.updateTitle(title: "Hi there 😁\n\(dateFormatter.string(from: Date()))")
    }
    
    func showResult(result: Int) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        view.updateTitle(title: "Result is \(result) 🎲\n\(dateFormatter.string(from: Date()))")
    }
    
}
