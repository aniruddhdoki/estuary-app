//
//  File.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import SwiftUI
import Foundation

struct ButtonStack: View {
    let links: Links
    
    var body: some View {
        Text("Buy now at:")
            .font(.headline)
        HStack {
            Button(action: { openURL(links.stockX) }) {
                Text("StockX")
            }
            Button(action: { openURL(links.goat) }) {
                Text("GOAT")
            }
            Button(action: { openURL(links.flightClub) }) {
                Text("Flight Club")
            }
            Button(action: { openURL(links.stadiumGoods) }) {
                Text("Stadium Goods")
            }
        }
    }
    
    private func openURL(_ url: URL) {
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

