//
//  CardViewModel.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/16/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit


protocol ProduceCardViewModel {
    func cardViewModel() -> CardViewModel 
}
struct CardViewModel {
    
    let imageName :String
    let attributeString : NSAttributedString
    let textAlignment : NSTextAlignment
    

}

