//
//  QuickTracking.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 02/11/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit

class QuickTracking: UIViewController {
    
    @IBOutlet weak var containerNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func trackBtn(_ sender: UIButton) {
        print("Tap Track")
    }

}
