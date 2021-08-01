//
//  ContentView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 7/31/21.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            GeometryReader { _ in
                ZStack {
                    VStack {
                        
                        NavBar()
                        
                        SearchBar(text: $searchText)
                           
                        Spacer()
                        
                        Text("News")
                        
                        Spacer()
                    }
                }
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


