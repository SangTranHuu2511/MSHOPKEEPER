//
//  CustomCell.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 1/30/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var imageIcon: UIImage!
    @IBOutlet weak var label: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
