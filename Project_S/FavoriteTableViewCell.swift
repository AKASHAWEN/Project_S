//
//  FavoriteTableViewCell.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/27.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    
    @IBOutlet weak var favoriteLabel: UILabel!
    
    @IBOutlet weak var favoriteBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
