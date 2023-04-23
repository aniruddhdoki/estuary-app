////
////  SwiftUIView.swift
////  estuary-app
////
////  Created by Aniruddh Doki on 4/21/23.
////
//
//import SwiftUI
//import Foundation
//
//struct SwiftUIView: View {
//    var body: some View {
//        ShoeSearchView()
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
//
//struct ShoeSearchView: View {
//    @State private var searchText = ""
//    @State private var products: [Product] = []
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                TextField("Enter search text", text: $searchText)
//                    .padding()
//                    .background(Color.white)
//                    .cornerRadius(5)
//                    .padding(.horizontal, 20)
//
//                Button(action: {
//                    searchForProducts()
//                }, label: {
//                    Text("Search")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .foregroundColor(.white)
//                        .background(Color.blue)
//                        .cornerRadius(5)
//                        .padding(.horizontal, 20)
//                })
//                .padding(.top, 20)
//
//                List(products, id: \.sku) { product in
//                    NavigationLink(destination: ProductView(product: product)) {
//                        ProductRow(product: product)
//                    }
//                }
//            }
//            .navigationBarTitle("Shoe Search")
//        }
//    }
//
//    func searchForProducts() {
//            let headers = [            "X-RapidAPI-Key": "348f9e23aemshcacce315b9853fep1b7f84jsn2339aaea13bb",            "X-RapidAPI-Host": "the-sneaker-database.p.rapidapi.com"        ]
//
//            guard let searchTextEncoded = searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
//                  let url = URL(string: "https://the-sneaker-database.p.rapidapi.com/search?limit=10&q=\(searchTextEncoded)") else {
//                return
//            }
//
//            let request = NSMutableURLRequest(url: url,
//                                                    cachePolicy: .useProtocolCachePolicy,
//                                                timeoutInterval: 10.0)
//            request.httpMethod = "GET"
//            request.allHTTPHeaderFields = headers
//
//            let session = URLSession.shared
//            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//                if let data = data,
//                   let response = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
//                   let results = response["results"] as? [[String: Any]] {
//                    var productList: [Product] = []
//                    for result in results {
//                        if let product = Product.fromJSON(result) {
//                            productList.append(product)
//                        }
//                    }
//                    DispatchQueue.main.async {
//                        self.products = productList
//                    }
//                } else {
//                    print(error?.localizedDescription ?? "Unknown error")
//                }
//            })
//
//            dataTask.resume()
//        }
//}
//
//struct ProductRow: View {
//    let product: Product
//
//    var body: some View {
//        HStack {
//            AsyncImage(url: product.image.thumbnail) { phase in
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
//            VStack(alignment: .leading) {
//                Text(product.name)
//                    .font(.headline)
//
//                Text(product.brand)
//                    .font(.subheadline)
//            }
//        }
//        .padding(.vertical, 8)
//    }
//}
//
//
////productView done
//
