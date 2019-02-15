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
    let cardDeskView = UIView()
    let bottomStackView = HomeBottomControlsStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpLayout()
        setupDumyCard()
    }
    
    fileprivate func setupDumyCard() {
        let cardView = CardView()
        cardDeskView.addSubview(cardView)
        cardView.fillSuperview()
    }
    
     
    
    //MARK:- setup layout
    fileprivate func setUpLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, cardDeskView , bottomStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        
        overallStackView.bringSubviewToFront(cardDeskView)
        
    }
    


}

