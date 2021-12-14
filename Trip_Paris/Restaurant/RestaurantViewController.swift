//
//  RestaurantViewController.swift
//  Trip_Paris
//
//  Created by Apple user on 17/11/21.
//

import UIKit

class RestaurantViewController: UIViewController {
    
    
    let tableView = UITableView()
    var attraction: [Attractions] = []
    
    struct Cells {
        static let attracCell = "AttracTableViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Restaurant"
        attraction = AttData()
        ConfiTabView()
    }
    
    func ConfiTabView() {
        view.addSubview(tableView)
        setTableViewDelegate1()
        //tableView.rowHeight = 720
        tableView.register(AttracTableViewCell.self, forCellReuseIdentifier: Cells.attracCell)
        tableView.pin1(to: view)
    }
    
    func setTableViewDelegate1() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        shareApp(indexPath.row)
    }
    
    func shareApp(_ index:Int) {
        let obj = attraction[index]
        let someText: String = obj.name //"Enhance your logic skills!"
        let objectsToShare:URL = URL(string: "https://apps.apple.com/app/apple-store/id" + Constanta.ID)!
        let sharedObjects:[AnyObject] = [objectsToShare as AnyObject,someText as AnyObject]
        let activityViewController = UIActivityViewController(activityItems : sharedObjects, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook,UIActivity.ActivityType.postToTwitter,UIActivity.ActivityType.mail]
        self.present(activityViewController, animated: true, completion: nil)
        
    }

}


// MARK: - Extension


extension RestaurantViewController: UITableViewDelegate, UITableViewDataSource {
    
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

extension RestaurantViewController {
    func AttData() -> [Attractions]{
        
        let restar1 = Attractions(image: Image_Attr.restoran1, name: "Comice", info: "The bulk of Paris’s famed haute cuisine is fiscally out of reach for many. However Michelin-starred Comice, headed by Canadian chef Noam Gedalof and sommelier Etheliya Hananova (the two are married), is an indulgence that won’t completely melt your credit card. The look strikes a similar balance: elegant but relaxed, with striking arrangements from a renowned local florist. Hananova’s wine list — which features lesser-known wines from around the world — is terrific, as is Gedalof’s light, inventive contemporary French cooking. Try the duck foie gras with hazelnuts, strawberries, balsamic, and black pepper, or the roast chicken with polenta, wild mushrooms, and a salad of wild herbs.")
        
        let restar2 = Attractions(image: Image_Attr.restoran2, name: "Le Bistrot Flaubert", info: "Originally founded in the 1980s by chef Michel Rostang, this cozy bistro with flea market decor has been taken over by chef Nicolas Baumann and one of the most innovative restaurateurs in Paris right now, financier Stéphane Manigold. Korean-born chef Sukwon Yong, who used to work with Rostang, leads the kitchen, and his Asian spin on French bistro cooking has made this one of the most interesting and satisfying restaurants in western Paris. Expect dishes like Korean beef tartare with avocado mousse and puffed rice, and lumache (snail-shaped pasta) with rabbit confit, red curry, and kimchi. The prix fixe lunch is a real bargain in an expensive part of Paris.")
        
        let restar3 = Attractions(image: Image_Attr.restoran3, name: "Restaurant Arnaud Nicolas", info: "With excellent handmade pates, sausages, and terrines, award-winning charcutier and chef Arnaud Nicolas has revived an ancient branch of French gastronomy. The space, on a leafy avenue in the silk-stocking Seventh Arrondissement, is decorated with exposed stone walls, a beamed ceiling, and battleship-gray moldings. Roasts and meat pies, Gallic pleasures that date back at least to the Middle Ages, figure as first courses, before an evolving menu filled with seasonal produce. Nicolas shows off his style with turbot cooked with cep mushrooms, salmon koulibiak for two, beef cheek braised with carrots in red wine, veal sweetbreads with girolles mushrooms, and a luscious chocolate souffle.")
        
        let restar4 = Attractions(image: Image_Attr.restoran4, name: "Chez L'Ami Jean", info: "Chef Stéphane Jego’s heaving Left Bank bistro is perpetually packed. Like so few other Parisian chefs, Jego knows how to deliver beautiful, traditional French bistro food, modernized with tweaks so subtle most people won’t even notice. He’s barely touched the 1930s space since taking it over nearly two decades ago from a Basque rugby pub. The earthy dishes, often inspired by southwestern French farmhouse food, are so deeply satisfying you won’t mind the occasionally slow service or boisterous regulars. The menu includes Parmesan soup with cabbage and bonito flakes, roasted pigeon with thyme and garlic, roast lamb with smoked oregano, and light and fluffy rice pudding.")
        
        let restar5 = Attractions(image: Image_Attr.restoran5, name: "Restaurant David Toutain", info: "After working with Alain Passard and Marc Veyrat, David Toutain first wowed Paris at Agapé Substance in Saint-Germain. Now he has his own place, and his constantly changing tasting menus (which range from 70 to 250 euros) deliver some of the boldest and most interesting food in Paris. Think dishes like seared foie gras in baked potato bouillon with black truffles; a monochromatic white composition of cuttlefish with yuba; and nearly translucent Parmesan gnocchi, seasoned with the juice extracted from cooking the cheese at very low temperatures for hours. ")
        
        let restar6 = Attractions(image: Image_Attr.restoran6, name: "La Scene", info: "Chef Stéphanie Le Quellec’s glamorous subterranean dining room feels like a luxury railroad car, with the chef working in a theater-like open kitchen at the head of the room. It’s fun and amusing, which is the point. Le Quellec has reinvented French haute cuisine for the 21st century, offering diners a good time instead of another long stuffy experience. Her cooking is light, lucid, and precise, with touches of gastronomic wit. Poached langoustines come with buckwheat and a quenelle of blanc-manger and claw meat. Scottish grouse with morels is cooked with smoked tea. Veal sweetbreads arrive with roasted cauliflower and harissa. And a ganache, featuring Criollo chocolate from Venezuela, is made with olive oil. La Scene is one of the rare Paris restaurants that works as well for a romantic tete a tete as it does for a business meal. ")
        
        return [restar1, restar2, restar3, restar4, restar5, restar6]
    }
}
