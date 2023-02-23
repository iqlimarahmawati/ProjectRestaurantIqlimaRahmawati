//
//  DetailAddressTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class DetailAddressTableViewCell: UITableViewCell {
    static let identifier = "DetailAddressTableViewCell"

    var addressAreaLabel: UILabel = {
        let label = UILabel()
        label.text = "Carrer de la Lleialtat, 16\n08001 Barcelona"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func didSetupAddress()
    {
        self.addSubview(addressAreaLabel)
        didConstrainAddress()
    }
    
    func didConstrainAddress()
    {
        NSLayoutConstraint.activate([
            addressAreaLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            addressAreaLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -31),
            addressAreaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            addressAreaLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
