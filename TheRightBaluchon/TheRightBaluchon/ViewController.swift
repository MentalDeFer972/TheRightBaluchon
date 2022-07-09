//
//  ViewController.swift
//  TheRightBaluchon
//
//  Created by Joffrey TERRINE on 08/07/2022.
//

import UIKit
import Alamofire


class WeatherController: UIViewController {
    
    @IBOutlet weak var city: UILabel!
    
    @IBOutlet weak var imageCondition: UIImageView!
    
    @IBOutlet weak var temperature: UILabel!
    
    @IBOutlet weak var changeCityConfig: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AF.request("https://api.openweathermap.org/data/2.5/weather?q=\(String(describing: city.text))&appid=5fb97e1a17e403be063cc0b941ea6e08")
            .responseDecodable(of: [Weather].self){
                (reponse) in
                        
            }
    }
}

struct Weather : Decodable{
    
    var id : String?
    var main : String?
    var city : String?
    var condition : String?
    var temperature : String?
    
    init(json: [String: Any]){
        id = json["id"] as? String
        main = json["main"] as? String
        city = json["city"] as? String
        condition = json["condition"] as? String
        temperature = json["temperature"] as? String
    }
    
}


class TraduceController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
}

struct Traduce : Decodable{
    
}



class MoneyController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
}

struct Money : Decodable{
    
}

