//
//  TableLayoutCell.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 09/11/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit

class TableLayoutCell: UITableViewCell {
    
    @IBOutlet weak var no: UILabel!
    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var deskripsi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
