//
//  ViewController.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 02/11/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var quickTrackingView: UIView!
    @IBOutlet weak var advancedTrackingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //viewContainer.meratusShadowLayout()
//        viewContainer.dropShadow(color: .red, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
        viewContainer.dropShadow2(scale: true)
        quickTrackingView.alpha = 1
        advancedTrackingView.alpha = 0
    }
    
    @IBAction func segmentedTracking(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            quickTrackingView.alpha = 1
            advancedTrackingView.alpha = 0
        }
        else {
            print("1")
            advancedTrackingView.alpha = 1
            quickTrackingView.alpha = 0
        }
    }
    
}

extension UIView {
    func meratusShadowLayout() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 1
    }
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = .zero
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    func dropShadow2(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
