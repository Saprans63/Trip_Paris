//
//  HomeViewController.swift
//  Trip_Paris
//
//  Created by Apple user on 16/11/21.
//

import UIKit

let home = Home(frame: .zero)

class HomeViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        initView()
        
    }
    func initView()  {
        view.addSubview(home)
        home.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
            home.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            
        }
        
    }
    
    @objc private func buttonTapped(){
        let tabBarVC = UITabBarController()
        let vc1 = HotelViewController()
        let vc2 = RestaurantViewController()
        let vc3 = AttracrionViewController()
        
        
        tabBarVC.setViewControllers([vc1, vc2, vc3], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["tabbar_hotel", "tabbar_res", "tabbar_bike"]
        
        for x in 0..<items.count{
            //items[x].badgeValue = "1"
            items[x].image = UIImage(named: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
    
}
