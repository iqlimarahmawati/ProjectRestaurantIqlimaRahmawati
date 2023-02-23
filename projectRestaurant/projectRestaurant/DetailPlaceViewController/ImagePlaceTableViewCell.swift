//
//  ImagePlaceTableViewCell.swift
//  projectRestaurant
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class ImagePlaceTableViewCell: UITableViewCell {
    static let identifier = "ImagePlaceTableViewCell"
    var imagePlaceLabel: UIImageView = {
        let image = UIImage(named: "imageDetail")
        let imageView = UIImageView (image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    func didSetupImagePlace()
    {
        self.addSubview(imagePlaceLabel)
        didConstraintImagePlace()
    }
    
    func didConstraintImagePlace()
    {
        NSLayoutConstraint.activate([
            imagePlaceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 6),
            imagePlaceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imagePlaceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imagePlaceLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            imagePlaceLabel.heightAnchor.constraint(equalToConstant: 247),
            
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
