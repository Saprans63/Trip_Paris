//
//  HotelViewController.swift
//  Trip_Paris
//
//  Created by Apple user on 18/11/21.
//

import UIKit
import SnapKit

class HotelViewController: UIViewController {
    
    let tableView = UITableView()
    var Hotel: [Hotels] = []
    
    struct Cells {
        static let hotelCell = "HotelTableViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Hotel"
        Hotel = HotelData()
        ConfiTabView()
        view.addSubview(tableView)
    }
    
    
    func ConfiTabView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.register(HotelTableViewCell.self, forCellReuseIdentifier: Cells.hotelCell)
        tableView.pin2(to: view)
    }
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        shareApp(indexPath.row)
    }
    
    func shareApp(_ index:Int) {
        let obj = Hotel[index]
        let someText: String = obj.title //"Enhance your logic skills!"
        let objectsToShare:URL = URL(string: "https://apps.apple.com/app/apple-store/id" + Constanta.ID)!
        let sharedObjects:[AnyObject] = [objectsToShare as AnyObject,someText as AnyObject]
        let activityViewController = UIActivityViewController(activityItems : sharedObjects, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook,UIActivity.ActivityType.postToTwitter,UIActivity.ActivityType.mail]
        self.present(activityViewController, animated: true, completion: nil)
        
    }

    
    func initConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension HotelViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Hotel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.hotelCell) as! HotelTableViewCell
        let hotels = Hotel[indexPath.row]
        cell.selectionStyle = .none
        cell.sets(hotel: hotels)
        return cell
    }
}


extension HotelViewController {
    func HotelData() -> [Hotels]{
        
        let hotelData1 = Hotels(title: "Newhotel Le Voltaire", address: "ADDRESS:   3 Rue Pétion, 11th arrondissement: Bastille, Paris", service: "SERVICE:  Auto parking,  Dining place,  Free Wifi,  Gym,  High security.", image1: Image_Hotel.image1, image2: Image_Hotel.image2, image3: Image_Hotel.image3)
        
        let hotelData2 = Hotels(title: "Hôtel LOCOMO", address: "ADDRESS:  6 Bis Rue De Lyon, 12th arr: Bercy, Paris", service: "SERVICE:  Auto parking,  Dining place,  Free Wifi,  Gym,  High security.", image1: Image_Hotel.image4, image2: Image_Hotel.image5, image3: Image_Hotel.image6)
        
        let hotelData3 = Hotels(title: "Elysées Union", address: "ADDRESS:  44, Rue de l'Amiral Hamelin, 16th arrondissement: Passy, ​​Paris", service: "SERVICE:  Auto parking,  Dining place,  Free Wifi,  Gym,  High security.", image1: Image_Hotel.image7, image2: Image_Hotel.image8, image3: Image_Hotel.image9)
        
        let hotelData4 = Hotels(title: "B&B Hôtel Paris Porte des Lilas", address: "ADDRESS:   23 Avenue René Fonck, 19th arr: La Villette, Paris", service: "SERVICE:  Auto parking,  Dining place,  Free Wifi,  Gym,  High security.", image1: Image_Hotel.image10, image2: Image_Hotel.image11, image3: Image_Hotel.image12)
        
        return [hotelData1, hotelData2, hotelData3, hotelData4]
    }
}


