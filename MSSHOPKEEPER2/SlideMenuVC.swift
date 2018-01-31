//
//  SlideMenuVC.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 1/30/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit

class SlideMenuVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let model: [Model] = Data.loadData()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SlideMenuVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomCell else {
            return UITableViewCell()
        
        }
        cell.model = model[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
}
