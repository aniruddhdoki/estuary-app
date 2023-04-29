//
//  Links.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import Foundation

struct Links {
    var stockX: URL = URL(string: "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996")!
    var goat: URL = URL(string: "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996")!
    var flightClub: URL = URL(string: "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996")!
    var stadiumGoods: URL = URL(string: "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996")!
    
    init(json: [String: Any]) {
        if let stockX = URL(string: json["stockX"] as! String) {
            self.stockX = stockX
        } else {return}
        if let goat = json["goat"] {
            self.goat = URL(string: goat as! String)!
        } else {return}
        if let flightClub = json["flightClub"] {
            self.flightClub = URL(string: flightClub as! String)!
        } else {return}
        if let stadiumGoods = json["stadiumGodds"] {
            self.goat = URL(string: stadiumGoods as! String)!
        } else {return}
    }
    
    init(stockX: URL, goat: URL, flightClub: URL, stadiumGoods: URL) {
        self.stockX = stockX
        self.goat = goat
        self.flightClub = flightClub
        self.stadiumGoods = stadiumGoods
    }
}

//{
//      "id": "ffeca709-8866-496c-af40-4b3bf74e94f5",
//      "sku": "688501-9XX",
//      "brand": "Nike",
//      "name": "Kobe 9 EM 'Galaxy' iD",
//      "colorway": "Multi Color/Multi Color",
//      "gender": "men",
//      "silhouette": "Kobe 9",
//      "releaseYear": "2014",
//      "releaseDate": "2014-08-01",
//      "retailPrice": 0,
//      "estimatedMarketValue": 750,
//      "story": "",
//      "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png"
//      },
//      "links": {
//        "stockX": "",
//        "goat": "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996",
//        "flightClub": "https://flightclub.com/kobe-9-id-galaxy-688501-996",
//        "stadiumGoods": ""
//      }
//    }
