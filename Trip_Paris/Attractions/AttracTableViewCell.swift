//
//  AttracTableViewCell.swift
//  Trip_Paris
//
//  Created by Apple user on 17/11/21.
//

import UIKit

class AttracTableViewCell: UITableViewCell {
    
    var shareImage = UIImageView()
    var attracImageView = UIImageView()
    var titleLabel = UILabel()
    var desccLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(attracImageView)
        addSubview(titleLabel)
        addSubview(desccLabel)
        addSubview(shareImage)
        
        confiImage()
        cinfiTitleLabel()
        ImageConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - FuncConfigur
    
    
    func sett(attrc: Attractions) {
        attracImageView.image = attrc.image
        titleLabel.text = attrc.name
        desccLabel.text = attrc.info
    }
    
    // MARK: - FuncConfigur
    
    
    func confiImage() {
        attracImageView.layer.cornerRadius = 10
        attracImageView.clipsToBounds = true
        
        shareImage.image = UIImage(named: "share")
    }
    
    func cinfiTitleLabel() {
        titleLabel.numberOfLines = 0
        // attracNameView.adjustsFontSizeToFitWidth = true
        titleLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        
        
        desccLabel.numberOfLines = 0
        desccLabel.font = UIFont.systemFont(ofSize: 13, weight: .bold)
    }
    
    func ImageConstrains() {
        
        shareImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.trailing.equalTo(-20)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(15)
            make.right.equalTo(-15)
        }
        
        attracImageView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(15)
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.height.equalTo(attracImageView.snp.width).multipliedBy(1)
        }
        
        desccLabel.snp.makeConstraints { make in
            make.top.equalTo(attracImageView.snp.bottom).offset(15)
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.bottom.equalTo(-15)
        }
        
    }
    
}
