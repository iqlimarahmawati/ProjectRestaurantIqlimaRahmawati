//
//  DatePlaceTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class DatePlaceTableViewCell: UITableViewCell {
    
    static let identifier = "DatePlaceTableViewCell"
    
    var dateRestaurantLabel: UITextView = {
        let label = UITextView()
        label.text = "Mon-Fri: 19:00 - 0:00h"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isEditable = false
        label.isEditable = false
        label.isScrollEnabled = false
        return label
    }()
    
    func didSetupDate(dateRestaurant: String, timeRestaurant: String)
    {
        dateRestaurantLabel.text = "\(dateRestaurant):\(timeRestaurant)" // String interpolation
        self.addSubview(dateRestaurantLabel)
        didConstraintDate()
    }
    
    func didConstraintDate()
    
    {
        NSLayoutConstraint.activate([
            dateRestaurantLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            dateRestaurantLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            dateRestaurantLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            dateRestaurantLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -6),
        ])
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
            }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
