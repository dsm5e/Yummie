//
//  Dish.swift
//  Yummie
//
//  Created by Golyakovph on 02.01.2023.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0 ) calories"
    }
}
