//
//  DelegateClass.swift
//  TestDelegate
//
//  Created by Parviz on 07/02/25.
//

import Foundation

protocol Protocole{
    func tap()
}

class Classss {
    var delegate: Protocole?
    
    func aa(){
        print("class tapped")
        delegate?.tap()
    }
    
}
