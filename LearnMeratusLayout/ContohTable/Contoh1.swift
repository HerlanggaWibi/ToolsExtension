//
//  Contoh1.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 06/12/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit

class Contoh1: UIViewController {
    
    let controller = Controller()

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        controller.requestDashboardFinance(type: "SHIPMENT")
        //controller.requestDashboardFinance(type: "BKG")
        //controller.requestDashboardFinance(type: "SI")
        controller.success = {
            self.lbl1.text = self.controller.dataResult[0]
            self.lbl2.text = self.controller.dataResult[0]
            self.lbl3.text = self.controller.dataResult[0]
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        controller.success = {
//            self.lbl1.text = self.controller.dataResult[0]
//            self.lbl2.text = self.controller.dataResult[0]
//            self.lbl3.text = self.controller.dataResult[0]
//        }
//    }
    
    

    @IBAction func getData(_ sender: UIButton) {
        let getData = controller.dataResult
        print("result: \(getData)")
    }

}
