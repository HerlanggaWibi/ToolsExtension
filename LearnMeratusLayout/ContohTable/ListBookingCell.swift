//
//  ListBookingCell.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 03/12/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit
import MaterialComponents

class ListBookingCell: UITableViewCell {
    
    @IBOutlet weak var card: MDCCard!
    
    var index = 0
    
    var subscribeButtonAction : (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        card.setShadowElevation(ShadowElevation(rawValue: 8), for: .normal)
        card.addTarget(self, action: #selector(cardBtn(_:)), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func cardBtn(_ sender: MDCCard) {

        subscribeButtonAction?()
        
    }

}
