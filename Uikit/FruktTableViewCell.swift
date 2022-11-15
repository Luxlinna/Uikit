//
//  FruktTableViewCell.swift
//  Uikit
//
//  Created by Linna Lux on 2022-11-15.
//

import UIKit

class FruktTableViewCell: UITableViewCell {

    @IBOutlet weak var fruktlist: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
