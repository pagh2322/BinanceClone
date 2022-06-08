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
    
    let category = [
        "Hot",
        "Market Cap",
        "Price",
        "24h Change"
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
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                                .frame(width: UIScreen.main.bounds.width / 2 - 20 - 10, height: 44)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.signUpButtonColor)
                                )
                        }
                        
                        Button(action: {
                            // login
                        }) {
                            Text("Log In")
                                .foregroundColor(.black)
                                .bold()
                                .padding()
                                .frame(width: UIScreen.main.bounds.width / 2 - 20 - 10, height: 44)
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.loginButtonColor)
                                )
                        }
                    }
                    .padding(.top, 20)
                    
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.customSecondary)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 100)
                        .padding(.top, 30)
                        .padding(.bottom, 40)
                    
                    Section(header: headerView()) {
                        ForEach(coinNames, id: \.self) { name in
                            Text(name)
                                .font(.title)
                                .padding(.vertical)
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
    
    private func headerView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top, spacing: 0) {
                Text("Watchlist")
                    .bold()
                    .foregroundColor(.disableColor)
                
                VStack {
                    Text("Coin")
                        .bold()
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .fill(Color.loginButtonColor)
                        .frame(width: 25, height: 4)
                }
                .padding(.leading, 25)
                
                Text("NFT")
                    .bold()
                    .foregroundColor(.disableColor)
                    .padding(.leading, 25)
                Spacer()
            }
            .padding(.leading, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<category.count, id: \.self) { index in
                        Text(category[index])
                            .bold()
                            .font(.callout)
                            .padding(.leading, index == 0 ? 20 : 30)
                            .foregroundColor(index == 0 ? .white : .disableColor)
                    }
                }
            }
            .padding(.top, 15)
        }
        .padding(.vertical, 15)
        .background(Color.bgColor)
    }
    
}
