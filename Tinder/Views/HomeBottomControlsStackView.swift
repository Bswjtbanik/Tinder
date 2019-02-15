//
//  HomeBottomControlsStackView.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 120).isActive = true
        
       let subViews =  [#imageLiteral(resourceName: "refresh") , #imageLiteral(resourceName: "dismiss") , #imageLiteral(resourceName: "superlike") ,#imageLiteral(resourceName: "like") , #imageLiteral(resourceName: "boost") ].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
     

        subViews.forEach { (v) in
            addArrangedSubview(v)
        }
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
