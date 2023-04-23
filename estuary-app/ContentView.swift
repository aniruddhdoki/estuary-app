////
////  ContentView.swift
////  estuary-app
////
////  Created by Aniruddh Doki on 4/18/23.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack{
//            ProductView(product: sampleProduct)
//            Spacer()
//        }.background(
//            LinearGradient(
//                                gradient: Gradient(colors: [Color.black, Color.orange]),
//                                startPoint: .topLeading,
//                                endPoint: .bottomTrailing
//                            )
//        )
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct ProductView: View {
//    let product: Sneaker
//    
//    private let priceFormatter: NumberFormatter = {
//            let formatter = NumberFormatter()
//            formatter.numberStyle = .currency
//            formatter.maximumFractionDigits = 2
//            return formatter
//        }()
//    
//    
//    var body: some View {
//        VStack {
//            Text(product.name)
//                .font(.title)
//                .foregroundColor(Color.white)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                    .alignmentGuide(.leading) { _ in
//                        0 // align to the leading edge
//                    }
//            Text(product.sku)
//                .font(.title2)
//                .foregroundColor(Color.white)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                    .alignmentGuide(.leading) { _ in
//                        0 // align to the leading edge
//                    }
//            Text(priceFormatter.string(from: NSNumber(value: product.retailPrice)) ?? "")
//                .font(.title2)
//                .foregroundColor(Color.white)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                    .alignmentGuide(.leading) { _ in
//                        0 // align to the leading edge
//                    }
//            AsyncImage(url: product.image.original) { phase in
//                                switch phase {
//                                case .empty:
//                                    ProgressView()
//                                case .success(let image):
//                                    image
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        
//                                case .failure:
//                                    Image(systemName: "xmark.circle.fill")
//                                        .foregroundColor(.red)
//                                @unknown default:
//                                    EmptyView()
//                                }
//                            }
//
//            ButtonStack(links: [
//                        ("StockX", product.links.stockX),
//                        ("GOAT", product.links.goat),
//                        ("Flight Club", product.links.flightClub),
//                        ("Stadium Goods", product.links.stadiumGoods)
//                    ])
//
//            }
//        }
//        
// 
//    }
//
//    
//struct ProductListView: View {
//    let products: [Product]
//    
//    var body: some View {
//        ScrollView {
//            LazyVStack {
//                ForEach(products, id: \.sku) { product in
//                    ProductView(product: product)
//                        .padding(.bottom, 20)
//                }
//            }
//        }
//    }
//}
//
//
//struct ButtonStack: View {
//    let links: [(String, URL?)]
//    
//    var body: some View {
//        VStack(spacing: 5) {
//            ForEach(links, id: \.0) { link, url in
//                if let url = url {
//                    Button(action: {
//                        UIApplication.shared.open(url)
//                    }) {
//                        Text(link)
//                            .foregroundColor(.black)
//                            .frame(maxWidth: .infinity)
//                            .padding()
//                            .background(Color.white.opacity(0.8))
//                            .cornerRadius(10)
//                    }
//                }
//            }
//        }
//    }
//}
//
//
