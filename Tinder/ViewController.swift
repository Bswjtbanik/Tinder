//
//  ViewController.swift
//  Tinder
//
//  Created by Biswajit Banik on 2/15/19.
//  Copyright © 2019 Osman Haidar. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    let topStackView = TopNaviagationStackView()
    let cardDeskView = UIView()
    let bottomStackView = HomeBottomControlsStackView()

    let users = [
        User(name: "Puja", age: 18, profession: "Framacy", imageName: "cardView"),
        User(name: "Maliha", age: 25, profession: "BBA", imageName: "cardView2"),
        User(name: "Maliha", age: 25, profession: "BBA", imageName: "cardView2"),
        User(name: "Puja", age: 18, profession: "Framacy", imageName: "cardView"),
        User(name: "Maliha", age: 25, profession: "BBA", imageName: "cardView2")


    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpLayout()
        setupDumyCard()
    }
    
    fileprivate func setupDumyCard() {
        
        users.forEach { (user) in
            let cardView = CardView()
            cardView.imageView.image = UIImage(named: user.imageName)
           // cardView.informationLabel.text = "\(user.name) \(user.age) \n \(user.profession)"
           

            let attributeText = NSMutableAttributedString(string: user.name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
            attributeText.append(NSAttributedString(string: "  \(user.age)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))
             attributeText.append(NSAttributedString(string: "\n\(user.profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))


            cardView.informationLabel.attributedText = attributeText

            cardDeskView.addSubview(cardView)
            cardView.fillSuperview()
        }
      
      
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

