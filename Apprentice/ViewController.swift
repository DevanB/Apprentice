//
//  ViewController.swift
//  Apprentice
//
//  Created by Devan Beitel on 6/30/18.
//  Copyright © 2018 Devan Beitel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        view.addSubview(redView)
        
        redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, trailing: view.trailingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 16))
    }
}


extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
    }
}
