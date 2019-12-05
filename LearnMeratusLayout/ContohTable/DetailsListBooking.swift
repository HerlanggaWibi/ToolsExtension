//
//  DetailsListBooking.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 04/12/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit

class DetailsListBooking: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    var getLbl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = getLbl
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
