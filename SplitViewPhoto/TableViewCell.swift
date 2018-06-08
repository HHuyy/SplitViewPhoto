//
//  TableViewCell.swift
//  SplitViewPhoto
//
//  Created by tham gia huy on 6/8/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagePokemon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
