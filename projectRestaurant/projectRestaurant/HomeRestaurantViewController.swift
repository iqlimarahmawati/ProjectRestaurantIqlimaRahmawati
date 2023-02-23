//
//  HomeRestaurantViewController.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class HomeRestaurantViewController: UIViewController {
    
    
    @IBOutlet weak var restaurantTableView: UITableView!
    var home : [HomeRestaurantModel] = [
        HomeRestaurantModel(imagePlace: "gambar1", nameWaiter: "El Pachuco", nameArea: "Best nachos in town", placePrice: "€15/person"),
        HomeRestaurantModel(imagePlace: "gambar2", nameWaiter: "Taco Alto Born", nameArea: "Mexican-American", placePrice: "€15/person"),
        HomeRestaurantModel(imagePlace: "gambar3", nameWaiter: "La Taqueria", nameArea:"El Pachuco", placePrice: "€15/person"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantTableView.delegate = self
        restaurantTableView.dataSource = self
        restaurantTableView.register(HomeRestaurantTableViewCell.self , forCellReuseIdentifier: HomeRestaurantTableViewCell.identifier)
        restaurantTableView.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        
    }
}
extension HomeRestaurantViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return home.count
        
        default:
            return 0
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
                return UITableViewCell()
            }
            cell.didsetupTitle()
            return cell
            
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeRestaurantTableViewCell.identifier, for: indexPath) as? HomeRestaurantTableViewCell else {
                return UITableViewCell()
            }
            let homeRestaurant = home[indexPath.row]
            cell.imagePlace.image = UIImage(named: homeRestaurant.imagePlace)
            //        let namawaiters = homeRestaurant.nameWaiter
            cell.namaArea.text = homeRestaurant.nameArea
            cell.nameWaiterLabel.text = homeRestaurant.nameWaiter
            cell.placePrice.text = homeRestaurant.placePrice
            
            cell.didSetupHome()
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
        if  let detailPlace = storyboard.instantiateViewController(withIdentifier: "DetailPlaceViewController") as? DetailPlaceViewController {
            navigationController?.pushViewController(detailPlace, animated: true)
        }
    }
}
