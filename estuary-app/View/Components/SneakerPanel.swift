//
//  SneakerPanel.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import SwiftUI

struct SneakerPanel: View {
    let sneaker: Sneaker
    
    init(sneaker: Sneaker) {
        self.sneaker = sneaker
    }
    
    var body: some View {
        VStack {
            AsyncImage(url: sneaker.images.original) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 8)
                case .failure:
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.red)
                @unknown default:
                    EmptyView()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}


