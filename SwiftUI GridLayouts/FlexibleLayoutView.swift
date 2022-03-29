//
//  FlexibleLayoutView.swift
//  SwiftUI GridLayouts
//
//  Created by Samuel Blackburn on 29/03/2022.
//

import SwiftUI

struct FlexibleLayoutView: View {
    let data = (1...500).map{ "item\($0)" }
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
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

struct FlexibleLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleLayoutView()
    }
}
