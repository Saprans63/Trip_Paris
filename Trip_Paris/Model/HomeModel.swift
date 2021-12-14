//
//  HomeModel.swift
//  Trip_Paris
//
//  Created by Apple user on 16/11/21.
//

import Foundation
import UIKit
import SnapKit

class Home: UIView {
    var image_efil = UIImageView()
    var image_lour = UIImageView()
    var button = UIButton()
    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(image_efil)
        addSubview(image_lour)
        addSubview(button)
        image_lour.addSubview(label)
        
        
        label.text = "Travel to Paris"
        label.font = UIFont.systemFont(ofSize: 31, weight: .bold)
        label.textColor = .white
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        
        
        image_lour.image = UIImage(named: "eiffel5")
        image_lour.layer.cornerRadius = 10
        image_lour.clipsToBounds = true
        image_lour.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(40)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.32)
        }
        
        
        image_efil.image = UIImage(named: "eiffel1")
        image_efil.layer.cornerRadius = 10
        image_efil.clipsToBounds = true
        image_efil.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(40)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.52)
        }
        
        
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        button.layer.cornerRadius = 10
        button.setTitle("Introduction", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        button.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalToSuperview().multipliedBy(0.1)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(100)
            
        }
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
