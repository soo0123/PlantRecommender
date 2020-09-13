//
//  MyPlantsTableViewCell.swift
//  Plants_test1
//
//  Created by 이진휘 on 04/10/2019.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit

class MyPlantsTableViewCell: UITableViewCell {
        
    @IBOutlet var cellPlantImage: UIImageView!
    @IBOutlet var cellPlantName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state

    }

}
