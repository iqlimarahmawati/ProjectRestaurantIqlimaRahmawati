//
//  RestaurantPlacesTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class RestaurantPlacesTableViewCell: UITableViewCell {

    static let identifier = "RestaurantPlacesTableViewCell"
    
    
    var menuImage: UIImageView = {
        let image = UIImage(named: "imagePlace")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    var placeLabel: UILabel = {
        let label = UILabel()
        label.text = "Spanish"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var placeCountView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    var placeCountLabel: UILabel = {
        let label = UILabel()
        label.text = " 15 place"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

        func didSetup()
    {
        self.addSubview(menuImage)
        self.addSubview(placeLabel)
        self.addSubview(placeCountView)
        placeCountView.addSubview(placeCountLabel)
        
        didConstraint()
    }
    
    private func didConstraint()
    
    {
        NSLayoutConstraint.activate([
            menuImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            menuImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            menuImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -13),
            menuImage.widthAnchor.constraint(equalToConstant: 16),
//            menuImage.heightAnchor.constraint(equalToConstant: 16),
        
            placeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            placeLabel.leadingAnchor.constraint(equalTo: menuImage.trailingAnchor, constant: 14),
            placeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -13),
        
            placeCountView.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            placeCountView.leadingAnchor.constraint(equalTo: placeLabel.trailingAnchor, constant: 10),
            placeCountView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -9),
            placeCountView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -13),
        
            placeCountLabel.topAnchor.constraint(equalTo: placeCountView.topAnchor, constant: 18),
            placeCountLabel.leadingAnchor.constraint(equalTo: placeCountView.leadingAnchor, constant: 10),
            placeCountLabel.bottomAnchor.constraint(equalTo: placeCountView.bottomAnchor, constant: -18),
            placeCountLabel.trailingAnchor.constraint(equalTo: placeCountView.trailingAnchor, constant: -10),
        ])
        
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
