//
//  MyTableViewCell.swift
//  examLocalDatabase
//
//  Created by R93 on 12/04/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var l1: UILabel!
    
    @IBOutlet weak var l2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
}
