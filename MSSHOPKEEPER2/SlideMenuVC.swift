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
    let model: [ItemSlide] = Data.loadDataItemSlide()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SlideMenuVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CellSlide else {
            return UITableViewCell()
        
        }


        cell.model = model[indexPath.row]
        if indexPath.row == 3 {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: cell.frame.width, height: 1))
            view.backgroundColor = .gray
            view.alpha = 0.5
            cell.addSubview(view)
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
}

extension SlideMenuVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == model.count - 1 {
            let alert = UIAlertController(title: "", message: "Bạn có muốn đăng xuất khỏi ứng dụng?", preferredStyle: UIAlertControllerStyle.alert)
            
            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Log out ", style: UIAlertActionStyle.default, handler: {(alert: UIAlertAction!) in self.dismiss(animated: true, completion: nil)}))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            // show the alert
            self.present(alert, animated: true, completion: nil)
        } else if indexPath.row == 3 {
            let cell = tableView.cellForRow(at: indexPath)
            performSegue(withIdentifier: "SlideMenuVCToChangePassVC", sender: cell)
        }
    }
}
