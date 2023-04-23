//
//  SearchViewModel.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import Foundation

class SearchViewModel: ObservableObject {
    @Published var sneakers: [Sneaker] = []
    @Published var searchText: String = "kobe"
    @Published var resultsLimit = 10

    func search() {
//        let headers = [
//            "X-RapidAPI-Key": "348f9e23aemshcacce315b9853fep1b7f84jsn2339aaea13bb",
//            "X-RapidAPI-Host": "the-sneaker-database.p.rapidapi.com"
//        ]
//        guard let searchTextEncoded = searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
//              let url = URL(string: "https://the-sneaker-database.p.rapidapi.com/search?limit=\(resultsLimit)&q=\(searchTextEncoded)") else {
//            return
//        }
//
//        let request = NSMutableURLRequest(
//            url: url,
//            cachePolicy: .useProtocolCachePolicy,
//            timeoutInterval: 10.0
//        )
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = headers
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//            if (error != nil) {
//                print(error as Any)
//            } else {
//                let response = response
//                print(response)
//                guard let json = try? JSONSerialization.jsonObject(with: data!) as? [String: Any] else {
//                    print("error serializing JSON")
//                    return
//                }
//                let results = json["results"]
//                for result in results as! [[String: Any]] {
//                    print("sneaker products generating")
//                    self.sneakers.append(Sneaker(json: result))
//                }
//            }
//        })
//        dataTask.resume()
//        print(sneakers)
    }
    
    init() {
        sneakers.append(sneaker7)
        sneakers.append(sneaker2)
        sneakers.append(sneaker3)
        sneakers.append(sneaker1)
    }
    
    let sneaker1 = Sneaker(
        id: UUID(),
        sku: "688501-9XX",
        brand: "Nike",
        name: "Kobe 9 EM 'Galaxy' iD",
        colorway: "Multi Color/Multi Color",
        gender: "Men",
        silhouette: "Kobe 9",
        releaseYear: "2014",
        releaseDate: "2014-08-01",
        estimatedMarketValue: "300",
        story: "This sneaker was inspired by the original Air Max 90 from the 90s.",
        images: Images(
            original: URL(string: "https://example.com/images/original.png")!,
            small: URL(string: "https://example.com/images/small.png")!,
            thumbnail: URL(string: "https://example.com/images/thumbnail.png")!
        ),
        links: Links(
            stockX: URL(string: "https://stockx.com/nike-air-max-90-white-black-red")!,
            goat: URL(string: "https://www.goat.com/sneakers/nike-air-max-90-white-black-red")!,
            flightClub: URL(string: "https://www.flightclub.com/nike-air-max-90-white-black-red-800255")!,
            stadiumGoods: URL(string: "https://www.stadiumgoods.com/nike-air-max-90-white-black-red")!
        )
    )
    let sneaker7 = Sneaker(
        id: UUID(),
        sku: "688501-996",
        brand: "Nike",
        name: "Kobe 9 EM 'Galaxy' iD",
        colorway: "Multi Color/Multi Color",
        gender: "Men",
        silhouette: "Kobe 9",
        releaseYear: "2014",
        releaseDate: "August 1, 2014",
        estimatedMarketValue: "750",
        story: "The Nike Dunk Low SP ‘Brazil’ celebrates the South American nation’s flag with a vibrant color scheme. The leather upper combines Varsity Maize and Pine Green, the former featuring on the perforated toe box and the latter on the forefoot overlay and heel tab. Contrasting white is applied to the quarter panel, collar and tongue, the latter embellished with a woven tag that reads ‘Nike’ in Portuguese. The low-top rides on a classic rubber cupsole in white, complete with a grippy outsole for traction.",
        images: Images(
            original: URL(string: "https://image.goat.com/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png")!,
            small: URL(string: "https://image.goat.com/750/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png")!,
            thumbnail: URL(string: "https://image.goat.com/375/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png")!
        ),
        links: Links(
            stockX: URL(string: "https://stockx.com/nike-dunk-low-brazil")!,
            goat: URL(string: "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996")!,
            flightClub: URL(string: "https://flightclub.com/kobe-9-id-galaxy-688501-996")!,
            stadiumGoods: URL(string: "https://stockx.com/nike-dunk-low-brazil")!
        )
    )
    let sneaker2 = Sneaker(
        id: UUID(),
        sku: "CT2220-400",
        brand: "Nike",
        name: "Dunk Low 'Brazil'",
        colorway: "Varsity Maize/Pine Green/White",
        gender: "Men",
        silhouette: "Dunk",
        releaseYear: "2020",
        releaseDate: "May 21, 2020",
        estimatedMarketValue: "300",
        story: "The Nike Dunk Low SP ‘Brazil’ celebrates the South American nation’s flag with a vibrant color scheme. The leather upper combines Varsity Maize and Pine Green, the former featuring on the perforated toe box and the latter on the forefoot overlay and heel tab. Contrasting white is applied to the quarter panel, collar and tongue, the latter embellished with a woven tag that reads ‘Nike’ in Portuguese. The low-top rides on a classic rubber cupsole in white, complete with a grippy outsole for traction.",
        images: Images(
            original: URL(string: "https://images.stockx.com/images/Nike-Dunk-Low-Brazil-Product.jpg")!,
            small: URL(string: "https://images.stockx.com/images/Nike-Dunk-Low-Brazil-Product.jpg?fit=thumb&h=140&w=140&bg=FFFFFF&pad=0")!,
            thumbnail: URL(string: "https://images.stockx.com/images/Nike-Dunk-Low-Brazil-Product.jpg?fit=thumb&h=64&w=64&bg=FFFFFF&pad=0")!
        ),
        links: Links(
            stockX: URL(string: "https://stockx.com/nike-dunk-low-brazil")!,
            goat: URL(string: "https://www.goat.com/sneakers/dunk-low-sp-brazil-ct2220-400")!,
            flightClub: URL(string: "https://www.flightclub.com/nike-dunk-low-sp-ct2220-400")!,
            stadiumGoods: URL(string: "https://www.stadiumgoods.com/nike-dunk-low-sp-ct2220-400")!
        )
    )
    let sneaker3 = Sneaker(
        id: UUID(),
        sku: "CZ5641-001",
        brand: "Nike",
        name: "Dunk High 'Dark Sulfur'",
        colorway: "Dark Sulfur/Black",
        gender: "Men",
        silhouette: "Dunk",
        releaseYear: "2021",
        releaseDate: "July 16, 2021",
        estimatedMarketValue: "250",
        story: "The Nike Dunk High ‘Dark Sulfur’ features a two-tone look with a black leather base and contrasting yellow overlays. The latter is finished with a pebbled texture and includes perforations on the toe box for added breathability. An embroidered Swoosh adorns the quarter panel in black, while branding hits on the woven tongue tag and heel tab are rendered in Dark Sulfur. The high-top rides on a classic rubber cupsole, fitted with a pivot point under the forefoot for smooth transitions.",
        images: Images(
            original: URL(string: "https://images.stockx.com/images/Nike-Dunk-High-Dark-Sulfur-Product.jpg")!,
            small: URL(string: "https://images.stockx.com/images/Nike-Dunk-High-Dark-Sulfur-Product.jpg?fit=thumb&h=140&w=140&bg=FFFFFF&pad=0")!,
            thumbnail: URL(string: "https://images.stockx.com/images/Nike-Dunk-High-Dark-Sulfur-Product.jpg?fit=thumb&h=64&w=64&bg=FFFFFF&pad=0")!
        ),
        links: Links(
            stockX: URL(string: "https://stockx.com/nike-dunk-high-dark-sulfur")!,
            goat: URL(string: "https://www.goat.com/sneakers/dunk-high-dark-sulfur-cz5641-001")!,
            flightClub: URL(string: "https://www.flightclub.com/nike-dunk-high-cz5641-001")!,
            stadiumGoods: URL(string: "https://www.stadiumgoods.com/nike-dunk-high-cz5641-001")!
        )
    )
    
    
}


//{
//  "count": 1308,
//  "totalPages": 100,
//  "results": [
//    {
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
//    },
//    {
//      "id": "ffec1fe6-0810-4a9a-aff8-29c82c96a5e1",
//      "sku": "653616-XXX",
//      "brand": "Nike",
//      "name": "Wmns Kobe 8 iD",
//      "colorway": "Multi-Color/Multi-Color",
//      "gender": "women",
//      "silhouette": "Kobe 8 System",
//      "releaseYear": "0",
//      "releaseDate": "",
//      "retailPrice": 0,
//      "estimatedMarketValue": 0,
//      "story": "",
//      "image": {
//        "360": [],
//        "original": "",
//        "small": "",
//        "thumbnail": ""
//      },
//      "links": {
//        "stockX": "",
//        "goat": "https://goat.com/sneakers/wmns-kobe-8-id-653616-xxx",
//        "flightClub": "https://flightclub.com/wmns-kobe-8-id-653616-xxx",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ffaf04c8-6c77-484a-b875-15edd7fc6e3a",
//      "sku": "653972-001",
//      "brand": "Nike",
//      "name": "Kobe 9 EM XDR 'Laser Crimson'",
//      "colorway": "Black/White/Laser Crimson/Wolf Grey",
//      "gender": "men",
//      "silhouette": "Kobe 9",
//      "releaseYear": "2014",
//      "releaseDate": "2014-05-03",
//      "retailPrice": 0,
//      "estimatedMarketValue": 0,
//      "story": "",
//      "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/034/432/366/original/653972_001.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/034/432/366/original/653972_001.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/034/432/366/original/653972_001.png.png"
//      },
//      "links": {
//        "stockX": "",
//        "goat": "https://goat.com/sneakers/kobe-9-em-ep-laser-crimson-653972-001",
//        "flightClub": "https://flightclub.com/kobe-9-em-ep-laser-crimson-653972-001",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ffa4fe92-2acf-4c51-9617-a4f61f544984",
//      "sku": "BOM852425",
//      "brand": "Nike",
//      "name": "Kobe A.D. Sample",
//      "colorway": "Black/Gold/Cement",
//      "gender": "men",
//      "silhouette": "Kobe A.D.",
//      "releaseYear": "0",
//      "releaseDate": "",
//      "retailPrice": 0,
//      "estimatedMarketValue": 0,
//      "story": "",
//      "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/013/793/107/original/BOM852425.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/013/793/107/original/BOM852425.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/013/793/107/original/BOM852425.png.png"
//      },
//      "links": {
//        "stockX": "",
//        "goat": "https://goat.com/sneakers/kobe-a-d-sample-bom852425",
//        "flightClub": "https://flightclub.com/kobe-a-d-sample-bom852425",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ff9659df-4031-4d47-8cc9-ae95bc07439e",
//      "sku": "749884-001",
//      "brand": "Nike",
//      "name": "Nike Zoom Kobe Venomenon 5 Black Metallic",
//      "colorway": "Black/Metallic Silver-Dark Grey",
//      "gender": "men",
//      "silhouette": "Zoom Kobe Venomenon 5",
//      "releaseYear": "2015",
//      "releaseDate": "2015-01-01",
//      "retailPrice": 120,
//      "estimatedMarketValue": 550,
//      "story": "",
//      "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/080/153/950/original/296002_00.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/080/153/950/original/296002_00.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/080/153/950/original/296002_00.png.png"
//      },
//      "links": {
//        "stockX": "https://stockx.com/nike-zoom-kobe-venomenon-5-black-metallic",
//        "goat": "https://goat.com/sneakers/zoom-kobe-venomenon-5-749884-001",
//        "flightClub": "https://flightclub.com/zoom-kobe-venomenon-5-black-grey-136022",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ff8fc91e-80d5-46cd-bf13-aeb05c7872d6",
//      "sku": "CZ6499-900",
//      "brand": "Nike",
//      "name": "Nike Kobe 5 Protro Undefeated What If Multi",
//      "colorway": "Black/Metallic Gold-University Red-White",
//      "gender": "men",
//      "silhouette": "Zoom Kobe 5",
//      "releaseYear": "2020",
//      "releaseDate": "2020-08-27",
//      "retailPrice": 190,
//      "estimatedMarketValue": 427,
//      "story": "Made in collaboration with the LA-based retailer, the Undefeated x Nike Zoom Kobe 5 Protro ‘Dirty Dozen’ is drawn from the two-piece ‘What If Pack,’ inspired by the 1996 NBA Draft in which a 17-year-old Kobe Bryant was selected by the Charlotte Hornets with the 13th overall pick. The shoe’s multi-hued design features colors taken from the twelve teams that passed up on the Black Mamba, while metallic gold accents give the nod to the athlete’s championship pedigree.",
//      "image": {
//        "360": [
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img02.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img03.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img04.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img05.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img06.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img07.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img08.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img09.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img10.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img11.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img12.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img13.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img14.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img15.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img16.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img17.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img18.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img19.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img20.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img21.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img22.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img23.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img24.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img25.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img26.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img27.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img28.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img29.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img30.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img31.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img32.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img33.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img34.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img35.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046",
//          "https://images.stockx.com/360/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Images/Nike-Kobe-5-Protro-Undefeated-What-If-Multi/Lv2/img36.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1609370046"
//        ],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/042/669/648/original/672345_00.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/042/669/648/original/672345_00.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/042/669/648/original/672345_00.png.png"
//      },
//      "links": {
//        "stockX": "https://stockx.com/nike-kobe-5-protro-undefeated-what-if-multi",
//        "goat": "https://goat.com/sneakers/undefeated-x-zoom-kobe-5-protro-what-if-pack-double-digits-cz6499-900",
//        "flightClub": "https://flightclub.com/undefeated-x-zoom-kobe-5-protro-what-if-pack-double-digits-cz6499-900",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ff71c15b-b7dc-4974-84b1-6af3311b473c",
//      "sku": "BV1207-902",
//      "brand": "Nike",
//      "name": "Nike Kobe 1 Protro Undefeated Orange Camo (Phoenix)",
//      "colorway": "Multi-Color/Black-Total Orange",
//      "gender": "men",
//      "silhouette": "Zoom Kobe 1",
//      "releaseYear": "2018",
//      "releaseDate": "2018-08-24",
//      "retailPrice": 180,
//      "estimatedMarketValue": 729,
//      "story": "Phoenix Suns star Devin Booker wore the Undefeated x Kobe Protro on his way to winning the 2018 NBA Three-Point Contest. The Undefeated x Zoom Kobe 1 Protro &#39;Orange Camo&#39; PE features a canvas upper dressed in an orange camo pattern, with black leather accents on the oversized Swoosh and tongue. The signature UNDFTD five-strike branding adorns the heel, while the sneaker also boasts carbon fiber accents on the midsole and a neoprene collar.",
//      "image": {
//        "360": [
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img02.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img03.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img04.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img05.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img06.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img07.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img08.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img09.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img10.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img11.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img12.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img13.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img14.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img15.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img16.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img17.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img18.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img19.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img20.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img21.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img22.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img23.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img24.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img25.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img26.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img27.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img28.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img29.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img30.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img31.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img32.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img33.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img34.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img35.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875",
//          "https://images.stockx.com/360/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Images/Nike-Kobe-1-Protro-Undefeated-Orange-Camo-Phoenix/Lv2/img36.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1610082875"
//        ],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/079/009/641/original/439720_00.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/079/009/641/original/439720_00.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/079/009/641/original/439720_00.png.png"
//      },
//      "links": {
//        "stockX": "https://stockx.com/nike-kobe-1-protro-undefeated-orange-camo-phoenix",
//        "goat": "https://goat.com/sneakers/undefeated-x-kobe-1-protro-pe-orange-camo-undftd-k1-org",
//        "flightClub": "https://flightclub.com/kobe-1-protro-undftd-pe-multicolor-black-total-orange-804878",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ff4669a0-9bbe-4979-b893-ea83a29dc387",
//      "sku": "333373-413",
//      "brand": "Nike",
//      "name": "Hyperdunk Supreme 'Kobe Barcelona Ronaldinho'",
//      "colorway": "Italty Blue/White-Taxi-Nw Mrn",
//      "gender": "men",
//      "silhouette": "Hyperdunk",
//      "releaseYear": "0",
//      "releaseDate": "",
//      "retailPrice": 0,
//      "estimatedMarketValue": 0,
//      "story": "",
//      "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/080/159/777/original/21855_00.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/080/159/777/original/21855_00.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/080/159/777/original/21855_00.png.png"
//      },
//      "links": {
//        "stockX": "",
//        "goat": "https://goat.com/sneakers/hyperdunk-supreme-kobe-barcelona-ronaldinho-333373-413",
//        "flightClub": "https://flightclub.com/hyperdunk-supreme-kobe-barcelona-ronaldinho-333373-413",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ff3b9655-04b3-47e0-9364-94aaa042c393",
//      "sku": "636602-005",
//      "brand": "Nike",
//      "name": "Nike Kobe IX Elite Hero Pack (GS)",
//      "colorway": "Wolf Grey/Turquoise/Yellow",
//      "gender": "child",
//      "silhouette": "Kobe 9",
//      "releaseYear": "0",
//      "releaseDate": "",
//      "retailPrice": 0,
//      "estimatedMarketValue": 500,
//      "story": "Made for big kids, the Nike Kobe 9 Elite GS ‘Hero Pack’ dropped in 2014 alongside the LeBron 11 Elite and KD 6 Elite. The towering Kobe silhouette represents the first Nike Basketball shoe to feature Flyknit construction, finished here in a neutral Wolf Grey shade with vibrant pop art-inspired accents. A Lunarlon midsole provides lightweight cushioning, fortified with a carbon fiber heel counter for added stability.",
//      "image": {
//        "360": [],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/000/017/097/original/636602_005.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/000/017/097/original/636602_005.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/000/017/097/original/636602_005.png.png"
//      },
//      "links": {
//        "stockX": "https://stockx.com/nike-kobe-ix-elite-hero-pack-gs",
//        "goat": "https://goat.com/sneakers/kobe-9-elite-gs-hero-pack-636602-005",
//        "flightClub": "https://flightclub.com/kobe-9-elite-gs-hero-pack-636602-005",
//        "stadiumGoods": ""
//      }
//    },
//    {
//      "id": "ff02c100-7d81-43c4-a7e2-75b38b4f3860",
//      "sku": "488371-701",
//      "brand": "Nike",
//      "name": "Nike Kobe 7 Barcelona (Away)",
//      "colorway": "Tour Yellow/Game Royal-Lemon Twist",
//      "gender": "men",
//      "silhouette": "Zoom Kobe 7",
//      "releaseYear": "2012",
//      "releaseDate": "2012-07-21",
//      "retailPrice": 140,
//      "estimatedMarketValue": 429,
//      "story": "The seventh signature sneaker for Kobe Bryant, the Nike Zoom Kobe 7 System dropped during the 2011-2012 NBA season. This limited edition Europe Zoom Kobe 7 System ‘Barcelona&#39; colorway features a Tour Yellow base and Game Royal accents inspired by FC Barcelona’s club crest. The low-top basketball shoe also comes with Flywire technology and a Lemon Twist yellow on the inner lining.",
//      "image": {
//        "360": [
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img02.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img03.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img04.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img05.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img06.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img07.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img08.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img09.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img10.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img11.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img12.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img13.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img14.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img15.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img16.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img17.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img18.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img19.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img20.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img21.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img22.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img23.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img24.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img25.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img26.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img27.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img28.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img29.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img30.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img31.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img32.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img33.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img34.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img35.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963",
//          "https://images.stockx.com/360/Nike-Kobe-7-Barcelona-Away/Images/Nike-Kobe-7-Barcelona-Away/Lv2/img36.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1619739963"
//        ],
//        "original": "https://image.goat.com/attachments/product_template_pictures/images/000/036/091/original/488371_701.png.png",
//        "small": "https://image.goat.com/750/attachments/product_template_pictures/images/000/036/091/original/488371_701.png.png",
//        "thumbnail": "https://image.goat.com/375/attachments/product_template_pictures/images/000/036/091/original/488371_701.png.png"
//      },
//      "links": {
//        "stockX": "https://stockx.com/kobe-7-barcelona-away",
//        "goat": "https://goat.com/sneakers/zoom-kobe-7-system-barcelona-488371-701",
//        "flightClub": "https://flightclub.com/zoom-kobe-7-system-tour-yellow-game-royal-lmn-twist-041729",
//        "stadiumGoods": ""
//      }
//    }
//  ]
//}
