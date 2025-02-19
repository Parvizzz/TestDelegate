//
//  UiKitView.swift
//  TestDelegate
//
//  Created by Parviz on 19/02/25.
//

import SwiftUI

struct UiKitView: UIViewControllerRepresentable {
    var contentView: UIViewController
    
    func makeUIViewController(context: Context) -> UIViewController {
        let parentVC = contentView
        return parentVC
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
