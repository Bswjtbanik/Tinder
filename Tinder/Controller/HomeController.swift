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


    
    let cardViewModels : [CardViewModel] = {
        let producers = [
            User(name: "Puja", age: 18, profession: "Framacy", imageName: "cardView"),
            User(name: "Puja", age: 18, profession: "Framacy", imageName: "cardView"),
            User(name: "Maliha", age: 25, profession: "BBA", imageName: "cardView2"),
            User(name: "Maliha", age: 25, profession: "BBA", imageName: "cardView2"),
            User(name: "Puja", age: 18, profession: "Framacy", imageName: "cardView"),
            User(name: "Maliha", age: 25, profession: "BBA", imageName: "cardView2"),
            Advertiser(title: "Biswajit Banik", brandName: "Tinder Apps", posterPhotoName: "add"),
            User(name: "Puja", age: 18, profession: "Framacy", imageName: "cardView"),
        ] as [ProduceCardViewModel]
        let viewModels = producers.map({return $0.cardViewModel()})
        return viewModels
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpLayout()
        setupDumyCard()
    }
    
    fileprivate func setupDumyCard() {
        
        
        cardViewModels.forEach { (CardVM) in
            let cardView = CardView(frame: .zero)
            cardView.cardViewModel = CardVM
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

