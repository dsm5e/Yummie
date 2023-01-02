//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Golyakovph on 03.01.2023.
//

import UIKit

class DishDetailViewController: UIViewController {

    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func placeOrderButton(_ sender: Any) {
    }
}
