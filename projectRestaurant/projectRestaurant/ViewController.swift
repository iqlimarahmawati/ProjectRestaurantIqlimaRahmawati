//
//  ViewController.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    var place : [RestaurantPlaceModel] = [
        RestaurantPlaceModel(namePlace: "Spanish"),
        RestaurantPlaceModel(namePlace: "Asian"),
        RestaurantPlaceModel(namePlace: "Latino"),
        RestaurantPlaceModel(namePlace: "American"),
        RestaurantPlaceModel(namePlace: "Brunch"),
        RestaurantPlaceModel(namePlace: "Vegetarian"),
        RestaurantPlaceModel(namePlace: "italian"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        //        self.view.addSubview(tableview)
        tableview.register(RestaurantPlacesTableViewCell.self, forCellReuseIdentifier: RestaurantPlacesTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return place.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let myCell = tableView.dequeueReusableCell(withIdentifier: RestaurantPlacesTableViewCell.identifier, for: indexPath) as? RestaurantPlacesTableViewCell else {
            return UITableViewCell()
        }
        
        let restaurantPlace = place[indexPath.row]
        let namePlace = restaurantPlace.namePlace
        myCell.placeLabel.text = namePlace
        
        myCell.didSetup()
        
        
        
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Storyboard", bundle: nil)
        if let homeRestaurantViewController = storyboard.instantiateViewController(withIdentifier: "HomeRestaurantViewController") as? HomeRestaurantViewController {
            self.navigationController?.pushViewController(homeRestaurantViewController, animated: true)
        }
    }
    
}
