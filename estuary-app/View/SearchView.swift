//
//  SearchView.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import SwiftUI

struct SearchView: View {
    @StateObject var viewModel = SearchViewModel()
    
    let columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack(){
                        Button(action: {
                            viewModel.search() 
                        }) {
                            Image(systemName: "magnifyingglass")
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        TextField("Search by brand, color...", text: $viewModel.searchText)
                            .padding(.horizontal, 5.0)
                        Image(systemName: "slider.horizontal.3")
                    }.padding(.all, 10.0)
                    
                    Divider()
                        .frame(height: 1)
                    
                    LazyVGrid(columns: columns, spacing: 0, content: {
                        ForEach(viewModel.sneakers, id: \.id) { sneaker in
                            NavigationLink(destination: DetailView(sneaker: sneaker)){
                                SneakerPanel(sneaker: sneaker)
                                    .aspectRatio(1.0, contentMode: .fit)
                            }
                        }
                    }).padding(.horizontal, 10.0)
                    Spacer()
                }
            }
            .onAppear {
                // Set initial search query
                viewModel.search()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
