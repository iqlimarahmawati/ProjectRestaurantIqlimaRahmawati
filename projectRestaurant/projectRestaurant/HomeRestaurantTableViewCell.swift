//
//  HomeRestaurantTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class HomeRestaurantTableViewCell: UITableViewCell {
static let identifier = "HomeRestaurantTableViewcell"
    
//    var titlePlaceLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Latino"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    var imagePlace: UIImageView = {
        let image = UIImage(named: "imagePlace")
        let imageView = UIImageView (image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    var nameWaiterLabel: UILabel = {
        let label = UILabel()
        label.text = "El Phacuco"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var namaArea: UILabel = {
        let label = UILabel()
        label.text = "Best nachos in town"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var placePrice: UILabel = {
        let label = UILabel()
        label.text = "€15/person"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
        func didSetupHome()
    {
//        self.addSubview(titlePlaceLabel)
        self.addSubview(imagePlace)
        self.addSubview(nameWaiterLabel)
        self.addSubview(namaArea)
        self.addSubview(placePrice)
        
        didConstraintHome()
        
    }
    
    private func didConstraintHome()
    {
//        NSLayoutConstraint.activate([
//            titlePlaceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 45),
//            titlePlaceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
//        ])
//
        NSLayoutConstraint.activate([
            imagePlace.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            imagePlace.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imagePlace.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -9),
            imagePlace.heightAnchor.constraint(equalToConstant: 200),
        ])
        NSLayoutConstraint.activate([
            nameWaiterLabel.topAnchor.constraint(equalTo: imagePlace.bottomAnchor, constant: 21),
            nameWaiterLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        ])
        
        NSLayoutConstraint.activate([
            namaArea.topAnchor.constraint(equalTo: nameWaiterLabel.bottomAnchor, constant: 5),
            namaArea.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        ])
        
        NSLayoutConstraint.activate([
            placePrice.topAnchor.constraint(equalTo: namaArea.bottomAnchor, constant: 5),
            placePrice.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            placePrice.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }

}
