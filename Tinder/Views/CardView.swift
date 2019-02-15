//
//  CardView.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

class CardView: UIView {

    fileprivate let imageView = UIImageView(image: #imageLiteral(resourceName: "cardView"))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        clipsToBounds = true
        addSubview(imageView)
        imageView.fillSuperview()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        addGestureRecognizer(panGesture)
    }
    
    fileprivate func handleEnded() {
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
            self.transform = .identity
        }) { (_) in
            
        }
    }
    
    @objc fileprivate func handlePan(gesture : UIPanGestureRecognizer){
       // print("Panning image")
        
        switch gesture.state {
        case .changed:
            let translation = gesture.translation(in: nil)
            self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
        case .ended:
            handleEnded()
        default:
            ()
        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
