//
//  HotelModel.swift
//  Trip_Paris
//
//  Created by Apple user on 18/11/21.
//

import Foundation
import UIKit

struct Hotels {
    var title: String
    
    var address: String
    var service: String
    
    var image1: UIImage
    var image2: UIImage
    var image3: UIImage
    
}


struct Image_Hotel {
    
    static let image1 = UIImage(named: "le1")!
    static let image2 = UIImage(named: "le2")!
    static let image3 = UIImage(named: "le3")!
    
    static let image4 = UIImage(named: "hl1")!
    static let image5 = UIImage(named: "hl2")!
    static let image6 = UIImage(named: "hl3")!
    
    static let image7 = UIImage(named: "eu1")!
    static let image8 = UIImage(named: "eu2")!
    static let image9 = UIImage(named: "eu3")!
    
    static let image10 = UIImage(named: "bb1")!
    static let image11 = UIImage(named: "bb2")!
    static let image12 = UIImage(named: "bb3")!
    
}

extension UIView{
    func pin2(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
