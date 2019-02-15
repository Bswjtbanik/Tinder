//
//  ViewController.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topStackView = TopNaviagationStackView()
    let bottomStackView = HomeBottomControlsStackView()
    let blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        blueView.backgroundColor = .blue
        setUpLayout()
    }
    
    fileprivate func setUpLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView , bottomStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
    


}

