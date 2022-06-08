//
//  ContentView.swift
//  BinanceClone
//
//  Created by peo on 2022/06/07.
//

import SwiftUI

struct MainView: View {
    let coinNames = [
        "BNB",
        "BTC",
        "GAL",
        "UNFI",
        "ETH",
        "LUNA",
        "ADA",
        "SOL",
        "BEL",
        "SHIB",
        "GMT",
        "WING"
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                    Circle()
                        .fill(.gray)
                        .frame(width: 150, height: 150)
                        .padding(.top, 50)
                    
                    
                    Text("Welcome to Binance")
                        .font(.title)
                        .fontWeight(.light)
                        .padding(.top, 30)
                    
                    Text("Join the world's largest crypto exchange")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.top, 10)
                    
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {
                            // sign up
                        }) {
                            Text("Sign Up")
                                .bold()
                        }
                        .buttonStyle(CustomButtonStyle(labelColor: .white, backgroundColor: .signUpButtonColor))
                        
                        Button(action: {
                            // login
                        }) {
                            Text("Log In")
                                .bold()
                        }
                        .buttonStyle(CustomButtonStyle(labelColor: .black, backgroundColor: .loginButtonColor))
                    }
                    .padding(.top, 20)
                    
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.customSecondary)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 100)
                        .padding(.top, 30)
                        .padding(.bottom, 40)
                    
                    Section(header: headerView()) {
                        ForEach(coinNames, id: \.self) { name in
                            ItemListRow(name: name)
                                .padding(.vertical, 15)
                        }
                        
                    }
                }
            }
            .background(Color.bgColor)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "person")
                    
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        Image(systemName: "viewfinder")
                            .padding(.leading, 5)
                    }
                }
            }
        }
    }
    
    let firstHeaderLabels = [
        "Watchlist",
        "Coin",
        "NFT"
    ]
    @State var selectedFirstHeaderLabelIndex = 0
    
    var firstHeaderView: some View {
        HStack(alignment: .top, spacing: 0) {
            ForEach(0..<firstHeaderLabels.count, id: \.self) { index in
                VStack {
                    Text(firstHeaderLabels[index])
                        .bold()
                        .foregroundColor(selectedFirstHeaderLabelIndex == index ? .white : .disableColor)
                    
                    if selectedFirstHeaderLabelIndex == index {
                        Rectangle()
                            .fill(Color.loginButtonColor)
                            .frame(width: 25, height: 4)
                    }
                }
                .onTapGesture {
                    selectedFirstHeaderLabelIndex = index
                }
                .padding(.leading, index == 0 ? 20 : 25)
            }
            Spacer()
        }
    }
    
    let secondHeaderLabels = [
        "Hot",
        "Market Cap",
        "Price",
        "24h Change"
    ]
    @State var selectedSecondHeaderLabelIndex = 0
    
    var secondHeaderView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<secondHeaderLabels.count, id: \.self) { index in
                    Text(secondHeaderLabels[index])
                        .bold()
                        .font(.callout)
                        .onTapGesture {
                            selectedSecondHeaderLabelIndex = index
                        }
                        .padding(.horizontal, 7)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .fill(selectedSecondHeaderLabelIndex == index ? Color.customSecondary : Color.bgColor)
                        )
                        .padding(.leading, index == 0 ? 13 : 23)
                        .foregroundColor(selectedSecondHeaderLabelIndex == index ? .white : .disableColor)
                }
            }
        }
    }
    
    private func headerView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            firstHeaderView
            
            secondHeaderView.padding(.top, 15)
        }
        .padding(.vertical, 15)
        .background(Color.bgColor)
    }
    
}
