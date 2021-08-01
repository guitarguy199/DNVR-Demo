//
//  TeamView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct TeamView: View {
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            Text("Teams")
            
            Spacer()
        }

    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
