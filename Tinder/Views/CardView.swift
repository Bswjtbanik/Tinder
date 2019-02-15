//
//  CardView.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

class CardView: UIView {

     let imageView = UIImageView(image: #imageLiteral(resourceName: "cardView"))
     let informationLabel = UILabel()
    
    
    fileprivate let threshold : CGFloat = 80

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        clipsToBounds = true
        addSubview(imageView)
        imageView.fillSuperview()
        
        addSubview(informationLabel)
        informationLabel.text = "TEST NAME TEST NAME TEST AGE"
        informationLabel.textColor = .white
        informationLabel.font = UIFont.systemFont(ofSize: 34, weight: .heavy)
        informationLabel.numberOfLines = 0
      
        informationLabel.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 16, right: 16))
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
        addGestureRecognizer(panGesture)
    }
    
    @objc fileprivate func handlePan(gesture : UIPanGestureRecognizer){
       // print("Panning image")
        switch gesture.state {
        case .changed:
            handleChanged(gesture)
        case .ended:
            handleEnded(gesture)
        default:
            ()
        }

    }
    
    fileprivate func handleEnded(_ gesture : UIPanGestureRecognizer) {
        
        let translationDirection : CGFloat = gesture.translation(in: nil).x > 0 ? 1 : -1

        let shoudDismisCard = abs(gesture.translation(in: nil).x) > threshold
        
        UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.1, options: .curveEaseOut, animations: {
            
            if shoudDismisCard {
                
                self.frame = CGRect(x: 1000 * translationDirection , y: 0, width: self.frame.width, height: self.frame.height)
                
            } else {
                self.transform = .identity
            }
        }) { (_) in
            self.transform = .identity
            if shoudDismisCard {
                self.removeFromSuperview()
            }

        }
    }
    
    fileprivate func handleChanged(_ gesture : UIPanGestureRecognizer){
        
        let translation = gesture.translation(in: nil)

        let degree: CGFloat = translation.x / 20
        let angle = degree * .pi / 180
        
        let rotationTransformation = CGAffineTransform(rotationAngle: angle)
        self.transform = rotationTransformation.translatedBy(x: translation.x, y: translation.y)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
