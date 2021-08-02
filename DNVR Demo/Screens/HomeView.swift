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
                        
                        ScrollView {
                            ZStack {
                                Image("shield")
                                    .resizable()
                                    .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 0, maxHeight: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .blur(radius: 1.5)
                                Text("The Shield Stays in LA")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .offset(y: 30)
                                    .shadow(color: .black, radius: 10)
                                    
                                Text("Los Angeles Giltinis Win 2021 Major League Rugby Championship Shield")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .offset(y: 80)
                                    .shadow(color: .black, radius: 20)
                                
                                Text("by Colton Strickler")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .offset(y: 130)
                            }
                            
                            Text("News")
                                .font(.largeTitle)
                            
                            NewsCollectionView()
                        }
                           
                       
                        
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


