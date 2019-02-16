//
//  User.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

struct User {
    let name :String
    let age : Int
    let profession : String
    let imageName : String
    
    func cardViewModel() -> CardViewModel {
        
        
        let attributeText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
        attributeText.append(NSAttributedString(string: "  \(age)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))
        attributeText.append(NSAttributedString(string: "\n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))
        
        return CardViewModel(imageName: imageName, attributeString: attributeText, textAlignment: .left)

    }
    
    
    
}
