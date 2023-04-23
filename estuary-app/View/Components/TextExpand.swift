//
//  TextExpand.swift
//  estuary-app
//
//  Created by Aniruddh Doki on 4/23/23.
//

import SwiftUI

struct TextExpand: View {
    @State private var isExpanded: Bool
    @State private var text: String
    @State private var maxNumberOfLines = 2
    @State private var buttonBaselineOffset: CGFloat = 0
    @State private var textHeight: CGFloat = 0
        var lineHeight: CGFloat {
            UIFont.preferredFont(forTextStyle: .body).lineHeight
        }
    
    init(isExpanded: Bool = false, text: String, maxNumberOfLines: Int = 2) {
        self.isExpanded = isExpanded
        self.text = text
        self.maxNumberOfLines = maxNumberOfLines
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(text)
                .lineLimit(isExpanded ? nil : maxNumberOfLines)
            
            if !isExpanded {
                Button(action: {
                    isExpanded.toggle()
                }, label: {
                    Text("Expand")
                        .foregroundColor(.blue)
                        .font(.footnote)
                })
                .alignmentGuide(.bottom) { _ in
                    textHeight - lineHeight // set the baseline offset for the button
                }
            } else {
                Button(action: {
                    isExpanded.toggle()
                }, label: {
                    Text("Minimize")
                        .foregroundColor(.blue)
                        .font(.footnote)
                })
                .alignmentGuide(.bottom) { _ in
                    textHeight - lineHeight
                }
            }
        }
        .background(GeometryReader {
            Color.clear
                .preference(key: TextHeightKey.self, value: $0.size.height)
        })
        .onPreferenceChange(TextHeightKey.self) {
            textHeight = $0
        }
    }
}

struct TextExpand_Previews: PreviewProvider {
    static var previews: some View {
        TextExpand(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
    }
}

struct TextHeightKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
