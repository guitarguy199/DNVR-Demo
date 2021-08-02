//
//  NewsCollectionView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/2/21.
//

import SwiftUI

struct NewsCollectionView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0...20, id: \.self) { _ in
                    VStack {
                        
                        Image("knucklehead")
                            .resizable()
                            .frame(width: 150, height: 150)
                        
                        Text("Example News Headline")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.75)
                        
                        Text("This would be a subheading with more details.")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.75)
                            .padding(.top, 5)
                        
                        Text("by Knucklehead Knux")
                            .font(.caption2)
                            .padding(.top, 3)
                            
                    }
            }
        }
        
    }
  }
}

struct NewsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        NewsCollectionView()
    }
}
