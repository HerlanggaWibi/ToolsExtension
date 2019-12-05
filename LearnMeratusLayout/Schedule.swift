//
//  Schedule.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 24/11/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit
import TinyConstraints
import MaterialComponents.MaterialCards
import MaterialComponents.MaterialTextFields


class Schedule: UIViewController {
    
    @IBOutlet weak var slideShow: UIView!
    @IBOutlet weak var mainView: UIView!
    
    let card: MDCCard = {
        
       let card = MDCCard()
        card.isInteractable = false
        return card
    }()
    
     let imgSchedule: UIImageView = {
       let imgSchedule = UIImageView()
        imgSchedule.image = UIImage(named: "cargo_ship")
        
        return imgSchedule
    }()
    
    let lblSchedule: UILabel = {
       let lblSchedule = UILabel()
        lblSchedule.text = "Schedule"
        lblSchedule.font = UIFont.boldSystemFont(ofSize: 15)
        lblSchedule.textColor = UIColor.blue
        
        return lblSchedule
    }()
    
    let txtField: MDCTextField = {
       let txtField = MDCTextField()
        
        let image = UIImageView()
        image.image = UIImage(named: "cargo_ship")
        txtField.leadingView = image
        
        return txtField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setConstraint()
        //layoutBottomNavBar()
    }
    
//    func layoutBottomNavBar() {
//        let size = bottomNavBar.sizeThatFits(view.bounds.size)
//        var bottomNavBarFrame = CGRect(x: 0,
//                                       y: view.bounds.height - size.height,
//                                       width: size.width,
//                                       height: size.height)
//        // Extend the Bottom Navigation to the bottom of the screen.
//        if #available(iOS 11.0, *) {
//            bottomNavBarFrame.size.height += view.safeAreaInsets.bottom
//            bottomNavBarFrame.origin.y -= view.safeAreaInsets.bottom
//        }
//        bottomNavBar.frame = bottomNavBarFrame
//    }
    
    private func setConstraint() {
        view.addSubview(card)
        
        card.topToBottom(of: slideShow, offset: 15, relation: .equal, isActive: true)
        card.left(to: mainView, offset: 8, relation: .equal, isActive: true)
        card.right(to: mainView, offset: -8, relation: .equal, isActive: true)
        card.height(200)
        
        card.addSubview(imgSchedule)
        
        imgSchedule.top(to: card, offset: 5, relation: .equal, isActive: true)
        imgSchedule.left(to: card, offset: 5, relation: .equal, isActive: true)
        imgSchedule.height(20)
        imgSchedule.width(20)
        
        card.addSubview(lblSchedule)
        
        lblSchedule.leftToRight(of: imgSchedule, offset: 8, relation: .equal, isActive: true)
        lblSchedule.centerY(to: imgSchedule)
        lblSchedule.height(15)
        
        card.addSubview(txtField)
        txtField.topToBottom(of: imgSchedule, offset: 20, relation: .equal, isActive: true)
        txtField.left(to: card, offset: 20, relation: .equal, isActive: true)
        txtField.right(to: card, offset: -5, relation: .equal, isActive: true)
        txtField.height(30)
        
    }

}
