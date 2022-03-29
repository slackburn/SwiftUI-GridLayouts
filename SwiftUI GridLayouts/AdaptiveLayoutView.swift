//
//  AdaptiveLayoutView.swift
//  SwiftUI GridLayouts
//
//  Created by Samuel Blackburn on 29/03/2022.
//

import SwiftUI

struct AdaptiveLayoutView: View {
    let data = (1...500).map{ "item\($0)" }
    let columns = [GridItem(.adaptive(minimum: 80))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 50)
                        .overlay(
                            Text("\(item)").foregroundColor(.white)
                        )
                }
            }
        }
    }
}

struct AdaptiveLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        AdaptiveLayoutView()
    }
}
