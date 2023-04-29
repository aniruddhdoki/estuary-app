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
        if let original = URL(string: json["original"] as! String),
           let small = URL(string: json["small"] as! String),
           let thumbnail = URL(string: json["thumbnail"] as! String) {
            self.original = original
            self.small = small
            self.thumbnail = thumbnail
        } else {
            print("no original")
            let me = URL(string: "https://www.linkedin.com/in/aniruddh-doki-b4785b1a4/")
            self.original = me!
            self.small = me!
            self.thumbnail = me!
            return
        }
    }
    
    init(original: URL, small: URL, thumbnail: URL) {
        self.original = original
        self.small = small
        self.thumbnail = thumbnail
    }
    
}
