//
//  HomeVC.swift
//  Yummie
//
//  Created by Golyakovph on 01.01.2023.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Africa Dish", image: "https://picsum.photos/100/200")
    ]
    
    var popular: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 34),
        .init(id: "id1", name: "Indomie", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 314),
        .init(id: "id1", name: "Napoleon", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 1522),
        .init(id: "id1", name: "Pizza", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 214)
    ]
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Fried Plantain", description: "This is my favorite dish.", image: "https://picsum.photos/100/200", calories: 34),
        .init(id: "id1", name: "Beans and Garri", description: "Very teasted beans with love", image: "https://picsum.photos/100/200", calories: 314),
        .init(id: "id1", name: "Garlic", description: "This is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 214)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        specialCollectionView.delegate = self
        specialCollectionView.dataSource = self
        
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil),  forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }
    
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return popular.count
        case specialCollectionView:
            return specials.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: popular[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
    }
}
