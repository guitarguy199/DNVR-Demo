//
//  StoreView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI
import SafariServices

struct StoreView: View {
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            Link(destination: URL(string: "https://dnvrlocker.com/")!, label: {
                VStack {
                    Image(systemName: "cart.circle")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.orange)
                    Text("Visit the Locker")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top, 30)
                }
              
              
            })
            
            Spacer()
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
            .preferredColorScheme(.dark)
    }
}
