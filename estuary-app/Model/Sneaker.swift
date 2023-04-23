//
//  Sneaker.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import Foundation

struct Sneaker: Identifiable{
    let id: UUID
    let sku: String
    let brand: String
    let name: String
    let colorway: String
    let gender: String
    let silhouette: String
    let releaseYear: String
    let releaseDate: String
    let estimatedMarketValue: String
    let story: String
    let images: Images
    let links: Links
    
    init(json: [String: Any]) {
        self.id = UUID()
        self.sku = json["sku"] as! String
        self.brand = json["brand"] as! String
        self.name = json["name"] as! String
        self.colorway = json["colorway"] as! String
        self.gender = json["gender"] as! String
        self.silhouette = json["silhouette"] as! String
        self.releaseYear = json["releaseYear"] as! String
        self.releaseDate = json["releaseDate"] as! String
        self.estimatedMarketValue = "\(json["estimatedMarketValue"]!)"
        self.story = json["story"] as! String
        self.images = Images(json: json["image"] as! [String: Any])
        self.links = Links(json: json["links"] as! [String: Any])
    }
    
    init(id: UUID, sku: String, brand: String, name: String, colorway: String, gender: String, silhouette: String, releaseYear: String, releaseDate: String, estimatedMarketValue: String, story: String, images: Images, links: Links) {
        self.id = id
        self.sku = sku
        self.brand = brand
        self.name = name
        self.colorway = colorway
        self.gender = gender
        self.silhouette = silhouette
        self.releaseYear = releaseYear
        self.releaseDate = releaseDate
        self.estimatedMarketValue = estimatedMarketValue
        self.story = story
        self.images = images
        self.links = links
    }
    
}

// this is by looping through the results
//{
//    "id": "ffeca709-8866-496c-af40-4b3bf74e94f5",
//    "sku": "688501-9XX",
//    "brand": "Nike",
//    "name": "Kobe 9 EM 'Galaxy' iD",
//    "colorway": "Multi Color/Multi Color",
//    "gender": "men",
//    "silhouette": "Kobe 9",
//    "releaseYear": "2014",
//    "releaseDate": "2014-08-01",
//    "retailPrice": 0,
//    "estimatedMarketValue": 750,
//    "story": "",
//    "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png"
//    },
//    "links": {
//        "stockX": "",
//        "goat": "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996",
//        "flightClub": "https://flightclub.com/kobe-9-id-galaxy-688501-996",
//        "stadiumGoods": ""
//    }
//}


