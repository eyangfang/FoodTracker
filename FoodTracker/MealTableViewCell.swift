//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Fang Yang on 13/1/18.
//  Copyright © 2018 Yang Fang. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var contentview: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            var rect = contentview.frame
            rect.origin.x = self.showingDeleteConfirmation ? -15 : 38
            contentview.frame = rect
        }
    }

}
