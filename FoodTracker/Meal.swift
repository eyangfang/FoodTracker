//
//  Meal.swift
//  FoodTracker
//
//  Created by Fang Yang on 10/1/18.
//  Copyright © 2018 Yang Fang. All rights reserved.
//

import UIKit

class Meal{
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int)
    {
        guard !name.isEmpty else{
            return nil
        }
        guard (rating>=0)&&(rating<=5) else{
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
