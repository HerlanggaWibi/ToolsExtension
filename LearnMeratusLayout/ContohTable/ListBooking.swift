//
//  ListBooking.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 03/12/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import UIKit
import MaterialComponents

class ListBooking: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let data = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = sender as? IndexPath
        print("index: \(index?.row ?? 100)")
        if segue.identifier == "details" {
            let vc = segue.destination as! DetailsListBooking
            vc.getLbl = data[index?.row ?? 1]
        }
    }

}

extension ListBooking: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListBookingCell
        cell.subscribeButtonAction = { [unowned self] in
            //cell.index = indexPath.row
            self.performSegue(withIdentifier: "details", sender: indexPath)
        }
        return cell
    }
    
    
}
