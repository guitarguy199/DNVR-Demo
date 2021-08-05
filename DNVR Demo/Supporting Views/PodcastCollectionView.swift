//
//  PodcastCollectionView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/4/21.
//

import SwiftUI

struct PodcastCollectionView: View {
    
    @State var image: String

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0...20, id: \.self) { _ in
                    VStack {
                        
                        Image(image)
                            .resizable()
                            .frame(width: 150, height: 150)
                        
                        Text("Will the Montforts ever sell the team?")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.75)
                        Text("Please. We need to win.")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.75)
                            .padding(.top, 3)
                        
                        Text("by Dinger")
                            .font(.caption2)
                            .padding(.top, 3)
                    }
                }
            }
        }
    }
}

struct PodcastCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastCollectionView(image: "rockies-podcast")
    }
}
