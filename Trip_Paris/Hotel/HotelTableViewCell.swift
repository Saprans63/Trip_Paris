//
//  HotelTableViewCell.swift
//  Trip_Paris
//
//  Created by Apple user on 18/11/21.
//

import UIKit

class HotelTableViewCell: UITableViewCell {
    
    var shareImage = UIImageView()
    
    var hotelTitle = UILabel()
    
    var hotelImage1 = UIImageView()
    var hotelImage2 = UIImageView()
    var hotelImage3 = UIImageView()
    
    var hotelAdress = UILabel()
    var hotelService = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(shareImage)
        
        addSubview(hotelTitle)
        
        addSubview(hotelImage1)
        addSubview(hotelImage2)
        addSubview(hotelImage3)
        
        addSubview(hotelAdress)
        addSubview(hotelService)
        
        confiTitle()
        confiImage()
        confiInfo()
        Constrains()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - FuncConfigur
    
    func sets(hotel: Hotels) {
        
        hotelTitle.text = hotel.title
        
        hotelImage1.image = hotel.image1
        hotelImage2.image = hotel.image2
        hotelImage3.image = hotel.image3
        
        hotelAdress.text = hotel.address
        hotelService.text = hotel.service
        
        
    }
    
    func confiTitle() {
        hotelTitle.numberOfLines = 0
        hotelTitle.font = UIFont.systemFont(ofSize: 30)
        
        shareImage.image = UIImage(named: "share")
    }
    
    func confiImage() {
        hotelImage1.layer.cornerRadius = 10
        hotelImage1.clipsToBounds = true
        
        hotelImage2.layer.cornerRadius = 10
        hotelImage2.clipsToBounds = true
        
        hotelImage3.layer.cornerRadius = 10
        hotelImage3.clipsToBounds = true
    }
    
    
    func confiInfo() {
        
        hotelAdress.textColor = .gray
        hotelAdress.numberOfLines = 0
        hotelAdress.font = UIFont.systemFont(ofSize: 18)
        
        hotelService.textColor = .blue
        hotelService.numberOfLines = 0
        hotelService.font = UIFont.systemFont(ofSize: 18)
    }
    
    func Constrains() {
        
        shareImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.trailing.equalTo(-20)
        }
        
        hotelTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(15)
            make.right.equalTo(-15)
        }
        
        hotelImage1.snp.makeConstraints { make in
            make.top.equalTo(hotelTitle.snp.bottom).offset(15)
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.height.equalTo(hotelImage1.snp.width).multipliedBy(0.8)
        }
        
        hotelImage2.snp.makeConstraints { make in
            make.top.equalTo(hotelImage1.snp.bottom).offset(15)
            make.left.equalTo(15)
            make.width.equalToSuperview().multipliedBy(0.43)
            make.height.equalTo(hotelImage2.snp.width).multipliedBy(1)
        }
        
        
        hotelImage3.snp.makeConstraints { make in
            make.top.equalTo(hotelImage1.snp.bottom).offset(15)
            make.width.equalToSuperview().multipliedBy(0.43)
            make.right.equalTo(-15)
            make.height.equalTo(hotelImage3.snp.width).multipliedBy(1)
        }
        
        
        hotelService.snp.makeConstraints { make in
            make.top.equalTo(hotelImage2.snp.bottom).offset(15)
            make.left.equalTo(15)
            make.right.equalTo(-15)
        }
        
        hotelAdress.snp.makeConstraints { make in
            make.top.equalTo(hotelService.snp.bottom).offset(15)
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.bottom.equalTo(-15)
        }
    }
    
    
}
