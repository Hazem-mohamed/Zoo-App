//
//  mycell.swift
//  ZooApp
//
//  Created by Hazem on 11/26/17.
//  Copyright © 2017 Hazem. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {
    
    
    @IBOutlet weak var AnimalImage: UIImageView!
    @IBOutlet weak var AnimalName: UILabel!
    @IBOutlet weak var AnimalDesc: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
