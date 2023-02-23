//
//  DetailTitleTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class DetailTitleTableViewCell: UITableViewCell {
    
    static let identifier = "DetailTitleTableViewCell"
    var titlePlaceLabel: UILabel = {
        let label = UILabel()
        label.text = "RAVAL"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        return label
    }()
    
    var detailNameRestaurantLabel: UILabel = {
        let label = UILabel()
        label.text = "La Gringa"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func didSetupDetail()
    {
        self.addSubview(titlePlaceLabel)
        self.addSubview(detailNameRestaurantLabel)
        
        didConstrainDetail()
    }
    
    func didConstrainDetail()
    {
        NSLayoutConstraint.activate([
            titlePlaceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            titlePlaceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            titlePlaceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),

            detailNameRestaurantLabel.topAnchor.constraint(equalTo: titlePlaceLabel.bottomAnchor, constant: 20 ),
            detailNameRestaurantLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            detailNameRestaurantLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            detailNameRestaurantLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
