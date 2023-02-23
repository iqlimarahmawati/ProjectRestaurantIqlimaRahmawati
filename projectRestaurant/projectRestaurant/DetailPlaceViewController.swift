//
//  DetailPlaceViewController.swift
//  projectRestaurant
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class DetailPlaceViewController: UIViewController {
    @IBOutlet weak var detailTableView: UITableView!
    
    var openPlace : [OrderMenuModel] = [
        OrderMenuModel(menuOrder: "The Fried Chicken Bun ", hargaMenu: "12€"),
        OrderMenuModel(menuOrder: "Tacos Criollo", hargaMenu:"9€"),
        OrderMenuModel(menuOrder: "Gringa pancakes", hargaMenu:"8€"),
    ]
    
    var timePlace : [OpenPlaceModel] = [
        OpenPlaceModel(dateOpen: "Mon-Fri, Sat-Sun", timeOpen: "19:00 - 0:00h,12:00 - 16:00h ")
        
    ]
    var detail : DetailPlaceModel?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inisialisasiData()
        
        detailTableView.delegate = self
        detailTableView.dataSource = self
        //        detailTableView.separatorStyle = .none
        //        detailTableView.register(DetailPlaceTableViewCell.self, forCellReuseIdentifier: DetailPlaceTableViewCell.identifier)
        
        detailTableView.register(DetailTitleTableViewCell.self, forCellReuseIdentifier: DetailTitleTableViewCell.identifier)
        detailTableView.register(DetailAddressTableViewCell.self, forCellReuseIdentifier: DetailAddressTableViewCell.identifier)
        detailTableView.register(DatePlaceTableViewCell.self, forCellReuseIdentifier: DatePlaceTableViewCell.identifier)
        detailTableView.register(ImagePlaceTableViewCell.self, forCellReuseIdentifier: ImagePlaceTableViewCell.identifier)
        detailTableView.register(DetailOrderTableViewCell.self, forCellReuseIdentifier: DetailOrderTableViewCell.identifier)
        detailTableView.register(DetailDeskripsiTableViewCell.self, forCellReuseIdentifier: DetailDeskripsiTableViewCell.identifier)
    }
    
    func inisialisasiData()
    {
        detail = DetailPlaceModel(titlePlace: "Raval", detailNameRestaurant: "La Gringa", addressArea: "Carrer de la Lleialtat, 16\n08001 Barcelona", dateRestaurant: timePlace, imagePlace: "gambar 2", orderMenu: openPlace, descPlace: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender")
    }
}

extension DetailPlaceViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard  let detail = detail else {
            return 0
        }
            
        switch section {
        case 0,1,3,5:
            return 1
        case 2:
            return detail.dateRestaurant.count
        case 4:
            return detail.orderMenu.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailTitleTableViewCell.identifier, for: indexPath) as? DetailTitleTableViewCell else {
                return UITableViewCell()
            }
            cell.didSetupDetail()
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailAddressTableViewCell.identifier, for: indexPath) as? DetailAddressTableViewCell else {
                return UITableViewCell()
            }
            
            
            cell.didSetupAddress()
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DatePlaceTableViewCell.identifier, for: indexPath) as? DatePlaceTableViewCell else {
                return UITableViewCell()
            }
            if let detail = detail {
                cell.didSetupDate(dateRestaurant: detail.dateRestaurant[indexPath.row].dateOpen, timeRestaurant: detail.dateRestaurant[indexPath.row].timeOpen)
            }
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImagePlaceTableViewCell.identifier, for:indexPath) as? ImagePlaceTableViewCell else {
                return UITableViewCell()
            }
            cell.didSetupImagePlace()
            return cell
        case 4:
            guard let orderMenu = detail?.orderMenu[indexPath.row], let cell = tableView.dequeueReusableCell(withIdentifier: DetailOrderTableViewCell.identifier, for: indexPath) as? DetailOrderTableViewCell else { return UITableViewCell()
            }
            
            cell.hargaLabel.text = orderMenu.hargaMenu
            cell.detailOrderLabel.text = orderMenu.menuOrder
            cell.didSetupDetailOrder()
            return cell
        case 5:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailDeskripsiTableViewCell.identifier, for: indexPath) as? DetailDeskripsiTableViewCell else {
                return UITableViewCell()
            }
            cell.didSetupDeskripsi()
            return cell
        default:
            return UITableViewCell()
        }
        
        
        //        guard let cell = tableView.dequeueReusableCell(withIdentifier: DetailPlaceTableViewCell.identifier, for: indexPath) as? DetailPlaceTableViewCell else {
        //            return UITableViewCell()
        //        }
        //        let detailPlace = detail[indexPath.row]
        
        //        cell.didSetupDetail()
        //        return cell
    }
    
}
