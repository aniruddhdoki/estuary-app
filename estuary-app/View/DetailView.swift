//
//  DetailView.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
    
    init(sneaker: Sneaker) {
        self.viewModel = DetailViewModel(sneaker: sneaker)
    }
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: viewModel.colors),
                startPoint: .topLeading, endPoint: .bottomTrailing
            )
            .opacity(0.7)
            .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    AsyncImage(url: viewModel.sneaker.images.original) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(16)
                        case .failure:
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.red)
                        @unknown default:
                            EmptyView()
                        }
                    }
                    HStack{
                        Text(viewModel.sneaker.brand)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.horizontal, 16)
                        Text(viewModel.sneaker.sku)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.horizontal, 16)
                        Spacer()
                        Text("$\(viewModel.sneaker.estimatedMarketValue)")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding(.horizontal, 16)
                    }
                    TextExpand(text: viewModel.sneaker.story)
                        .font(.body)
                        .padding(16)
//                    ButtonStack(links: viewModel.sneaker.links)
                }
                .navigationTitle(viewModel.sneaker.name)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(sneaker: Sneaker(
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
            story: "Made in collaboration with the LA-based retailer, the Undefeated x Nike Zoom Kobe 5 Protro ‘Dirty Dozen’ is drawn from the two-piece ‘What If Pack,’ inspired by the 1996 NBA Draft in which a 17-year-old Kobe Bryant was selected by the Charlotte Hornets with the 13th overall pick. The shoe’s multi-hued design features colors taken from the twelve teams that passed up on the Black Mamba, while metallic gold accents give the nod to the athlete’s championship pedigree.",
            images: Images(
                original: URL(string: "https://image.goat.com/attachments/product_template_pictures/images/080/159/777/original/21855_00.png.png")!,
                small: URL(string: "https://image.goat.com/750/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png")!,
                thumbnail: URL(string: "https://image.goat.com/375/attachments/product_template_pictures/images/049/559/995/original/213250_00.png.png")!
            ),
            links: Links(
                stockX: URL(string: "https://stockx.com/nike-dunk-low-brazil")!,
                goat: URL(string: "https://goat.com/sneakers/kobe-9-id-galaxy-688501-996")!,
                flightClub: URL(string: "https://flightclub.com/kobe-9-id-galaxy-688501-996")!,
                stadiumGoods: URL(string: "https://stockx.com/nike-dunk-low-brazil")!
            )
        ))
    }
}
