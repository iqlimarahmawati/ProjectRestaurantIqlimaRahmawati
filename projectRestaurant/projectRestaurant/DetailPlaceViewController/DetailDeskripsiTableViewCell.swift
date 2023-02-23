//
//  DetailDeskripsiTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class DetailDeskripsiTableViewCell: UITableViewCell {
    static let identifier = "DetailDeskripsiTableViewCell"
    var aboutMenuLabel: UILabel = {
        let label = UILabel()
        label.text = "About"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var desPlace: UILabel = {
        let label = UILabel()
        label.text = "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func didSetupDeskripsi()
    {
        self.addSubview(aboutMenuLabel)
        self.addSubview(desPlace)
        didConstraint()
        
    }
    func didConstraint()
    {
        NSLayoutConstraint.activate([
            aboutMenuLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 41),
            aboutMenuLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            aboutMenuLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18),
            
            desPlace.topAnchor.constraint(equalTo: aboutMenuLabel.bottomAnchor, constant: 1),
            desPlace.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 19),
            desPlace.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            desPlace.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -21),
            
        
        
        ])
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
