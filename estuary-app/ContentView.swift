//
//  ContentView.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ProductView(product: sampleProduct)
            Spacer()
        }.background(
            LinearGradient(
                                gradient: Gradient(colors: [Color.black, Color.orange]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProductView: View {
    let product: Product
    
    private let priceFormatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 2
            return formatter
        }()
    
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.title)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                    .alignmentGuide(.leading) { _ in
                        0 // align to the leading edge
                    }
            Text(product.sku)
                .font(.title2)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                    .alignmentGuide(.leading) { _ in
                        0 // align to the leading edge
                    }
            Text(priceFormatter.string(from: NSNumber(value: product.retailPrice)) ?? "")
                .font(.title2)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                    .alignmentGuide(.leading) { _ in
                        0 // align to the leading edge
                    }
            AsyncImage(url: product.image.original) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                case .success(let image):
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        
                                case .failure:
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.red)
                                @unknown default:
                                    EmptyView()
                                }
                            }

            ButtonStack(links: [
                        ("StockX", product.links.stockX),
                        ("GOAT", product.links.goat),
                        ("Flight Club", product.links.flightClub),
                        ("Stadium Goods", product.links.stadiumGoods)
                    ])

            }
        }
        
 
    }

    
struct ProductListView: View {
    let products: [Product]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(products, id: \.sku) { product in
                    ProductView(product: product)
                        .padding(.bottom, 20)
                }
            }
        }
    }
}


struct ButtonStack: View {
    let links: [(String, URL?)]
    
    var body: some View {
        VStack(spacing: 5) {
            ForEach(links, id: \.0) { link, url in
                if let url = url {
                    Button(action: {
                        UIApplication.shared.open(url)
                    }) {
                        Text(link)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}


struct Product {
    let sku: String
    let brand: String
    let name: String
    let colorway: String
    let gender: String
    let silhouette: String
    let releaseYear: String
    let releaseDate: String
    let retailPrice: Double
    let estimatedMarketValue: Double
    let story: String
    let image: ImageData
    let links: LinksData
}

struct LinksData {
    let stockX: URL?
    let goat: URL?
    let flightClub: URL?
    let stadiumGoods: URL?
}

struct ImageData {
    let original: URL
    let small: URL
    let thumbnail: URL
}

let sampleProduct = Product(
    sku: "DM0088-100",
    brand: "Nike",
    name: "Nike Dunk Low PRM Halloween (2021) (PS)",
    colorway: "Sail/Starfish/Black",
    gender: "preschool",
    silhouette: "Dunk",
    releaseYear: "2021",
    releaseDate: "",
    retailPrice: 65,
    estimatedMarketValue: 65,
    story: "The Nike Dunk Low Premium PS ‘Halloween’ delivers a little kids’ colorway designed especially for spooky season. The leather upper combines an off-white base with an orange Swoosh and black leather overlays, the latter covered in glaring eye graphics that glow in the dark. Debossed Nike branding decorates the tongue tag and heel tab, both rendered in solid black leather. Underfoot, the translucent rubber outsole similarly glows green when the lights go out.",
    image: ImageData(
        original: URL(string: "https://image.goat.com/attachments/product_template_pictures/images/061/953/917/original/DM0088_100.png.png")!,
        small: URL(string: "https://image.goat.com/750/attachments/product_template_pictures/images/061/953/917/original/DM0088_100.png.png")!,
        thumbnail: URL(string: "https://image.goat.com/375/attachments/product_template_pictures/images/061/953/917/original/DM0088_100.png.png")!
    ),
    links: LinksData(
        stockX: URL(string: "https://stockx.com/nike-dunk-low-prm-halloween-2021-ps"),
        goat: URL(string: "https://goat.com/sneakers/dunk-low-premium-ps-halloween-dm0088-100"),
        flightClub: URL(string: "https://flightclub.com/dunk-low-premium-ps-halloween-dm0088-100"),
        stadiumGoods: nil
    )
)

