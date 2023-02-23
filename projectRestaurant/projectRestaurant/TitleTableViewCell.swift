//
//  TitleTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    static let identifier = "TitleTableViewCell"
    var titlePlaceLabel: UILabel = {
        let label = UILabel()
        label.text = "Latino"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
    }
        func didsetupTitle()
    {
     self.addSubview(titlePlaceLabel)
        didConstrainTitle()
    }
    
    private func didConstrainTitle()
    {
    NSLayoutConstraint.activate([
                    titlePlaceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
                    titlePlaceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                    titlePlaceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -85),
                    titlePlaceLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
                ])

}

}
