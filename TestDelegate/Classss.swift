//
//  DelegateClass.swift
//  TestDelegate
//
//  Created by Parviz on 07/02/25.
//

//import Foundation
//
//protocol Protocole{
//    func tap()
//}
//
//class Classss {
//    var delegate: Protocole?
//    
//    func aa(){
//        print("class tapped")
//        delegate?.tap()
//    }
//    
//}

//import Foundation
//
//protocol Protocoles {
//    func tap()
//}
//
//class ClassssOpen {
//    var delegate: Protocoles?
//    
//    func sendRefresh() {
//        print("Value sending for ContentView")
//        delegate?.tap()
//    }
//}


import Foundation

protocol SamiyaGlavniyProtocols {
   func tapped()
}

class TestingClass {
    var delegate: SamiyaGlavniyProtocols?
    
    func funksiyaTestovogoClassa() {
        print("Функция основного класса")
        delegate?.tapped()
    }
}
