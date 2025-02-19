//
//  ContentView.swift
//  TestDelegate
//
//  Created by Parviz on 07/02/25.
//

//import SwiftUI
//
//struct ContentView: View {
//    @State var isImageVisible = false
//    var vModel = Classss()
//    var body: some View {
//        VStack {
//            Button("Tap", action: {
//                vModel.aa()
//            })
//            
//            Spacer()
//            
//            if isImageVisible {
//                Image(systemName: "house.fill")
//                    .resizable()
//                    .font(.system(size: 30))
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.yellow)
//            }
//         
//                
//        }
//        .onAppear(){
//            vModel.delegate = self
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
//
//extension ContentView: Protocole{
//    func tap() {
//        print("print delegate")
//        isImageVisible = true
//    }
//    
//}

//import SwiftUI
//
//struct ContentView: View {
//    @State private var isImageVisible = false
//    var vModel = ClassssOpen()
//    var body: some View {
//        VStack {
//            Button("Touch", action: {
//                vModel.sendRefresh()
//            })
//            Spacer()
//            
//            if isImageVisible {
//                Image(systemName: "house.fill")
//                    .resizable()
//                    .font(.system(size: 32))
//                    .frame(width: 200, height: 200)
//                    .foregroundColor(.green)
//            }
//               
//        }
//        .onAppear() {
//            vModel.delegate = self
//        }
//    }
//}
//
//extension ContentView: Protocoles {
//    func tap() {
//        print("print delegate")
//        isImageVisible = true
//    }
//}


//import SwiftUI
//
//struct ContentView: View {
//    var vmodel = TestingClass()
//    var body: some View {
//        VStack {
//            Button("Touch for activate Delegate", action: {
//                vmodel.funksiyaTestovogoClassa()
//            })
//        }
//        .onAppear() {
//            vmodel.delegate = self
//        }
//    }
//}
//extension ContentView: SamiyaGlavniyProtocols {
//    func tapped() {
//        print("Extension protocl activate")
//    }
//}

import SwiftUI

struct ContentView: View {
    @State private var showContent = false
    var body: some View {
         VStack {
            UiKitView(contentView: FirstController())
                .ignoresSafeArea()
        }
    }
}

