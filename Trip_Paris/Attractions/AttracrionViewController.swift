//
//  AttracrionViewController.swift
//  Trip_Paris
//
//  Created by Apple user on 17/11/21.
//

import UIKit

class AttracrionViewController: UIViewController {
    
    let tableView = UITableView()
    var attraction: [Attractions] = []
    
    struct Cells {
        static let attracCell = "AttracTableViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Attractions"
        attraction = AttData()
        ConfiTabView()
    }
   
    
    func ConfiTabView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.register(AttracTableViewCell.self, forCellReuseIdentifier: Cells.attracCell)
        tableView.pin1(to: view)
    }
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        shareApp(indexPath.row)
//    }
//
//    func shareApp(_ index:Int) {
//        let obj = attraction[index]
//        let someText: String = obj.name //"Enhance your logic skills!"
//        let objectsToShare:URL = URL(string: "https://apps.apple.com/app/apple-store/id" + Constanta.ID)!
//        let sharedObjects:[AnyObject] = [objectsToShare as AnyObject,someText as AnyObject]
//        let activityViewController = UIActivityViewController(activityItems : sharedObjects, applicationActivities: nil)
//        activityViewController.popoverPresentationController?.sourceView = self.view
//
//        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook,UIActivity.ActivityType.postToTwitter,UIActivity.ActivityType.mail]
//        self.present(activityViewController, animated: true, completion: nil)
//
//    }
}

// MARK: - Extension


extension AttracrionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attraction.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.attracCell) as! AttracTableViewCell
        let attraction = attraction[indexPath.row]
        cell.selectionStyle = .none
        cell.sett(attrc: attraction)
        return cell
    }
}

extension AttracrionViewController {
    func AttData() -> [Attractions]{
        
        let data1 = Attractions(image: Image_Attr.efil , name: "Eiffel", info: "The Eiffel Tower (la Tour Eiffel) ranks high on the list of places to visit in France and is the most-visited tourist attraction in the world. It's hard to believe that the structure was dismissed as a monstrosity when it was first unveiled. The iconic tower was designed by Alexandre-Gustave Eiffel for the Paris Exhibition of 1889, which marked the centenary of the French Revolution.   Address: Tour Eiffel, Champ de Mars, 75007 Paris (Métro: Bir-Hakeim, Trocadéro, Iéna, or Passy station  ")
        
        let data2 = Attractions(image: Image_Attr.luvr, name: "Lour", info: "A sumptuous palace that was once the home of France's kings, the Louvre is the most important of Paris' top museums. Visitors enter the museum in the courtyard of the palace at the glass pyramid (designed by Ieoh Ming Pei in 1917). The Louvre displays 35,000 artworks (many considered masterpieces) – from antiquities to European paintings of the 15th to 19th centuries.")
        
        let data3 = Attractions(image: Image_Attr.notr, name: "Notre-Dame", info: "Notre-Dame stands in the heart of Paris on the Île-de-la-Cité next to the Latin Quarter. An island in the Seine River, the Île-de-la-Cité is the historical and geographical center of Paris. On this small plot of land, the Romans built the Gallo-Roman city of Lutetia, and from the 6th century to the 14th century, the Kings of France resided here.")
        
        let data4 = Attractions(image: Image_Attr.champs, name: "Champs", info: "The most monumental boulevard in Paris used to be a desolate field of marshland until the 17th century, when it was landscaped by André Le Nôtre. A century later, the Parisian city planner Baron Haussman designed the boulevard's elegant buildings. The Champs-Elysées is divided into two parts with the Rond-Point des Champs-Elysées as its intersection.")
        
        let data5 = Attractions(image: Image_Attr.orsay, name: "Orsay", info: "The Musée d'Orsay displays a splendid collection of 19th- and 20th-century art (created from 1848 to 1914) in the converted Gare d'Orsay. This Belle Epoque railway station was built for the Universal Exhibition of 1900.Some of the world's most cherished paintings are on display in the museum's spacious galleries.")
        
        let data6 = Attractions(image: Image_Attr.palais, name: "Palais", info: "Commissioned by Napoleon III in 1860, the Palais Garnier Opera House was designed by Charles Garnier in an exuberant Baroque style. Garnier worked tirelessly on the project for over a decade, from 1862 to 1875. Today, the opulent monument is a symbol of Napoleon's Imperial regime.")
        
        
        
        return [data1, data2, data3, data4, data5, data6]
    }
}
