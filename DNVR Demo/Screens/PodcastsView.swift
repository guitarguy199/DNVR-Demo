//
//  PodcastsView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct PodcastsView: View {
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            Text("Podcasts")
            
            Spacer()
            
        }
    }
}

struct PodcastsView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsView()
    }
}
