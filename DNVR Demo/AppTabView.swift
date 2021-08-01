//
//  AppTabView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct AppTabView: View {
    
    init() {
        setupTabBar()
    }
    
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            TeamView()
                .tabItem {
                    Label("Teams", systemImage: "sportscourt")
                }
            VideosView()
                .tabItem {
                    Label("Videos", systemImage: "play.tv")
                }
            PodcastsView()
                .tabItem {
                    Label("Podcasts", systemImage: "headphones")
                }
            StoreView()
                .tabItem {
                    Label("Store", systemImage: "cart")
                }
        }
//        .accentColor(.white)
        
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}

extension AppTabView {
    func setupTabBar() {
      UITabBar.appearance().barTintColor = .black
      UITabBar.appearance().tintColor = .blue
      UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
      UITabBar.appearance().clipsToBounds = true
    }
}
