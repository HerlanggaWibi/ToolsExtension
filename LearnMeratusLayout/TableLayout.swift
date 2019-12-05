//
//  TableLayout.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 09/11/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit

class TableLayout: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    

    

}

extension TableLayout: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableLayoutCell
        
        cell.no.text = "1"
        cell.judul.text = "Coba Row"
        cell.deskripsi.text = "hehehe"
        
        return cell
    }
    
}
