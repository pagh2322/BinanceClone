//
//  ItemListRow.swift
//  BinanceClone
//
//  Created by peo on 2022/06/08.
//

import SwiftUI

struct ItemListRow: View {
    let name: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Circle()
                .fill(Color.customSecondary)
                .frame(width: 45, height: 45)
                .padding(.leading, 20)
            
            Text(name)
                .foregroundColor(.white)
                .fontWeight(.light)
                .padding(.leading, 15)
            
            Spacer()
            
            Text("$30,521.81")
                .foregroundColor(.white)
                .padding(.trailing, 20)
        }
    }
}
