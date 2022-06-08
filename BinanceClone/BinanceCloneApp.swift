//
//  BinanceCloneApp.swift
//  BinanceClone
//
//  Created by peo on 2022/06/07.
//

import SwiftUI

@main
struct BinanceCloneApp: App {
    
    init() {
        
//        UINavigationBar.appearance().barTintColor = UIColor(.bgColor)
        
        let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.backgroundColor = UIColor(.bgColor)
            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        
//        UINavigationBar.appearance().barTintColor = UIColor(.bgColor)
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
        }
    }
}
