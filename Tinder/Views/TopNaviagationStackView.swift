//
//  TopNaviagationStackView.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

class TopNaviagationStackView: UIStackView {

    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "fire"))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        settingsButton.setImage(#imageLiteral(resourceName: "man").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "chat").withRenderingMode(.alwaysOriginal), for: .normal)
        fireImageView.contentMode = .scaleAspectFit
        heightAnchor.constraint(equalToConstant: 80).isActive = true

        [settingsButton, UIView(), fireImageView ,UIView(), messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 16)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
