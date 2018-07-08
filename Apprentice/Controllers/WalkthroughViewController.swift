//
//  WalkthroughViewController.swift
//  Apprentice
//
//  Created by Devan Beitel on 7/2/18.
//  Copyright © 2018 Devan Beitel. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {
    
    let greetingsTextView: UITextView = {
       let textView = UITextView()
        textView.text = "Greetings\nApprentice!"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .clear
        textView.textColor = .black
        textView.font = .largeHeading
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let slide1TextView: UITextView = {
       let textView = UITextView()
        textView.text = "Organize your cards so that\nyou can defend the realm\nfrom evildoers."
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .clear
        textView.textColor = .black
        textView.font = .body
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let redCardImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: " Card A"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let slide2TextView: UITextView = {
        let textView = UITextView()
        textView.text = "Add cards\nto your\ncollection"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .clear
        textView.textColor = .white
        textView.font = .largeHeading
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let purpleCardImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: " Card B"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let slide3TextView: UITextView = {
        let textView = UITextView()
        textView.text = "Card lorem\nipsum set\ndolor"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .clear
        textView.textColor = .white
        textView.font = .largeHeading
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let getStartedButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get Started", for: .normal)
        button.tintColor = .green
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(greetingsTextView)
        view.addSubview(slide1TextView)
        view.addSubview(redCardImageView)
        redCardImageView.addSubview(slide2TextView)
        view.addSubview(purpleCardImageView)
        purpleCardImageView.addSubview(slide3TextView)
        view.addSubview(getStartedButton)
        
        setupLayout()
    }
    
    private func setupLayout() {
        greetingsTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greetingsTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50.0).isActive = true
        greetingsTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        greetingsTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        greetingsTextView.heightAnchor.constraint(equalToConstant: 102.0).isActive = true
        
        slide1TextView.topAnchor.constraint(equalTo: greetingsTextView.bottomAnchor).isActive = true
        slide1TextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slide1TextView.widthAnchor.constraint(equalToConstant: 230.0).isActive = true

        redCardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redCardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redCardImageView.widthAnchor.constraint(equalToConstant: 311).isActive = true
        redCardImageView.heightAnchor.constraint(equalToConstant: 440).isActive = true
        
        slide2TextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slide2TextView.topAnchor.constraint(equalTo: redCardImageView.topAnchor, constant: 120).isActive = true
        slide2TextView.bottomAnchor.constraint(equalTo: redCardImageView.bottomAnchor, constant: 193).isActive = true
        
        purpleCardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        purpleCardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        purpleCardImageView.widthAnchor.constraint(equalToConstant: 311).isActive = true
        purpleCardImageView.heightAnchor.constraint(equalToConstant: 440).isActive = true

        slide3TextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        slide3TextView.topAnchor.constraint(equalTo: purpleCardImageView.topAnchor, constant: 120).isActive = true
        slide3TextView.bottomAnchor.constraint(equalTo: purpleCardImageView.bottomAnchor, constant: 193).isActive = true
        
        getStartedButton.topAnchor.constraint(equalTo: purpleCardImageView.bottomAnchor)
        getStartedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
    }
}
