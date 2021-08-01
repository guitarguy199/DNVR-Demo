//
//  NavBar.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        HStack(alignment: .center) {
            Button {
                
            } label: {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding()
                    .foregroundColor(.white)
                
                Spacer()
                
                Image("dnvr-logo")
                    .padding(.leading, 30)
                
                Spacer()
                
                Image("fb-logo-small")
                    .resizable()
                    .frame(width: 10, height: 18)
                    .padding(.trailing, 20)
//                                    .background(Color.white)
                Image("twitter-logo-small")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .padding(.trailing, 20)
        
            }
           
        }
        .background(Color.black)
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
