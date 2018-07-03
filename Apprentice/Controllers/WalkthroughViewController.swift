//
//  WalkthroughViewController.swift
//  Apprentice
//
//  Created by Devan Beitel on 7/2/18.
//  Copyright © 2018 Devan Beitel. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        view.addSubview(blueView)
        
        blueView.anchor(top: view.safeAreaLayoutGuide.topAnchor, trailing: view.trailingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 16))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
