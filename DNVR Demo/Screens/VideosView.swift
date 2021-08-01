//
//  VideosView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct VideosView: View {
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            Text("Videos")
            
            Spacer()
        }
    }
}

struct VideosView_Previews: PreviewProvider {
    static var previews: some View {
        VideosView()
    }
}
