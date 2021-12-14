//
//  AttracModel.swift
//  Trip_Paris
//
//  Created by Apple user on 17/11/21.
//

import Foundation
import UIKit

struct Attractions {
    var image: UIImage
    var name: String
    var info: String
}


struct Image_Attr {
    
    static let efil = UIImage(named: "Eyfel")!
    static let luvr = UIImage(named: "Luvr")!
    static let notr = UIImage(named: "Notr")!
    static let champs = UIImage(named: "Champs")!
    static let orsay = UIImage(named: "Orsay")!
    static let palais = UIImage(named: "Palais")!
    
    static let restoran1 = UIImage(named: "restoran1-1")!
    static let restoran2 = UIImage(named: "restoran1-7")!
    static let restoran3 = UIImage(named: "restoran1-8")!
    static let restoran4 = UIImage(named: "restoran1-4")!
    static let restoran5 = UIImage(named: "restoran1")!
    static let restoran6 = UIImage(named: "restoran1-6")!
}


extension UIView{
    func pin1(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}


class Constanta {
    static let ID = "1592295216"
}
