//
//  Images.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import Foundation

struct Images {
    let original: URL
    let small: URL
    let thumbnail: URL
        
    init(json: [String: Any]) {
        self.original = URL(string: json["original"] as! String)!
        self.small = URL(string: json["small"] as! String)!
        self.thumbnail = URL(string: json["thumbnail"] as! String)!
    }
    
    init(original: URL, small: URL, thumbnail: URL) {
        self.original = original
        self.small = small
        self.thumbnail = thumbnail
    }
    
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
