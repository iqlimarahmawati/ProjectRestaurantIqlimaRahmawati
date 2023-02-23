//
//  DetailOrderTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class DetailOrderTableViewCell: UITableViewCell {
    static let identifier = "DetailOrderTableViewCell"
//    var orderMenuLabel: UILabel = {
//        let label = UILabel()
//        label.text = "order"
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    var detailOrderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "The Fried Chicken Bun"
//        label.isEditable = false
//        label.isSelectable = false
//        label.isScrollEnabled = false
        return label
    }()
    
    var hargaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "12€"
        return label
    }()
    
    
    func didSetupDetailOrder()
    {
//        self.addSubview(orderMenuLabel)
        self.addSubview(detailOrderLabel)
        self.addSubview(hargaLabel)
        
        didConstrainDetail()
    }
    
    func didConstrainDetail()
    {
        NSLayoutConstraint.activate([
//            orderMenuLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
//            orderMenuLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            orderMenuLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
////            orderMenuLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            detailOrderLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            detailOrderLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
//            detailOrderLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            detailOrderLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        
            hargaLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            hargaLabel.leadingAnchor.constraint(equalTo: detailOrderLabel.trailingAnchor, constant: 6),
            hargaLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            hargaLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        
        ])
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }

}
