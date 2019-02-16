//
//  Advertiser.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/16/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

struct Advertiser : ProduceCardViewModel{
    let title : String
    let brandName : String
    let posterPhotoName : String

    func cardViewModel() -> CardViewModel {
        
        let attributeText = NSMutableAttributedString(string: title, attributes: [.font : UIFont.systemFont(ofSize: 34, weight: .heavy)])
        attributeText.append(NSAttributedString(string: "\n" + brandName, attributes: [.font : UIFont.systemFont(ofSize: 20, weight: .regular)]))
        
       return  CardViewModel(imageName: posterPhotoName, attributeString: attributeText, textAlignment: .center)

    }
    
}

