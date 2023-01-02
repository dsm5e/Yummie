//
//  DishLandscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Golyakovph on 02.01.2023.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descritptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descritptionLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }

}
