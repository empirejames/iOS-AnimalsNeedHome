//
//  AnimalsTableViewCell.swift
//  AnimalsNeedHome
//
//  Created by 韋儒朱 on 2018/7/13.
//  Copyright © 2018年 韋儒朱. All rights reserved.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {
    @IBOutlet weak var img_animals: UIImageView!
    @IBOutlet weak var animals_name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
