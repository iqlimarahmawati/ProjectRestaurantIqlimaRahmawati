//
//  DetailPlaceTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class DetailPlaceTableViewCell: UITableViewCell {

    static let identifier = "DetailPlaceTableViewCell"
    
    var titlePlaceLabel: UILabel = {
        let label = UILabel()
        label.text = "RAVAL"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var detailNameRestaurantLabel: UILabel = {
        let label = UILabel()
        label.text = "La Gringa"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var addressAreaLabel: UILabel = {
        let label = UILabel()
        label.text = "Carrer de la Lleialtat, 16\n08001 Barcelona"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var dateRestaurantLabel: UITextView = {
        let label = UITextView()
        label.text = "Mon-Fri: 19:00 - 0:00h\nSat-Sun: 12:00 - 16:00h"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isEditable = false
        label.isEditable = false
        label.isScrollEnabled = false
        return label
    }()
    
    var imagePlaceLabel: UIImageView = {
        let image = UIImage(named: "imageDetail")
        let imageView = UIImageView (image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    var orderMenuLabel: UILabel = {
        let label = UILabel()
        label.text = "order"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var detailOrderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "The Fried Chicken Bun\nTacos Criollo \nGringa pancakes\n"
//        label.isEditable = false
//        label.isSelectable = false
//        label.isScrollEnabled = false
        return label
    }()
    
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
    
    func didSetupDetail()
    {
        self.addSubview(titlePlaceLabel)
        self.addSubview(detailNameRestaurantLabel)
        self.addSubview(addressAreaLabel)
        self.addSubview(dateRestaurantLabel)
        self.addSubview(imagePlaceLabel)
        self.addSubview(orderMenuLabel)
        self.addSubview(detailOrderLabel)
        self.addSubview(aboutMenuLabel)
        self.addSubview(desPlace)
        
        didConstrainDetail()
    }
    
    func didConstrainDetail()
    {
        NSLayoutConstraint.activate([
            titlePlaceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 45),
            titlePlaceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titlePlaceLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -80)
        ])
        NSLayoutConstraint.activate([
            detailNameRestaurantLabel.topAnchor.constraint(equalTo: titlePlaceLabel.bottomAnchor, constant: 58),
            detailNameRestaurantLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            detailNameRestaurantLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            addressAreaLabel.topAnchor.constraint(equalTo: detailNameRestaurantLabel.bottomAnchor, constant: 37),
            addressAreaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            addressAreaLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
        NSLayoutConstraint.activate([
            dateRestaurantLabel.topAnchor.constraint(equalTo: addressAreaLabel.bottomAnchor, constant: 6),
            dateRestaurantLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            dateRestaurantLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20)
        ])
        NSLayoutConstraint.activate([
            imagePlaceLabel.topAnchor.constraint(equalTo: dateRestaurantLabel.bottomAnchor, constant: 6),
            imagePlaceLabel.heightAnchor.constraint(equalToConstant: 274),
            imagePlaceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imagePlaceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -0),
        ])
        NSLayoutConstraint.activate([
            orderMenuLabel.topAnchor.constraint(equalTo: imagePlaceLabel.bottomAnchor, constant: 24),
            orderMenuLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            orderMenuLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20)
        ])
        NSLayoutConstraint.activate([
            detailOrderLabel.topAnchor.constraint(equalTo: orderMenuLabel.bottomAnchor, constant: 22),
            detailOrderLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            detailOrderLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18)

        ])
        NSLayoutConstraint.activate([
            aboutMenuLabel.topAnchor.constraint(equalTo: detailOrderLabel.bottomAnchor, constant: 41),
            aboutMenuLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 18),
            aboutMenuLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18)
        ])
        NSLayoutConstraint.activate([
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
