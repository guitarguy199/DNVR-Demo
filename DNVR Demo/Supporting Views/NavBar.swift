//
//  NavBar.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct NavBar: View {
    
    @State var show = false

    
    var body: some View {

                VStack {
                    HStack(alignment: .center) {
                        Button {
                            withAnimation(.easeIn) {
                                self.show.toggle()
                                print("pressed")
                            }
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
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}

struct Menu: View {
    
    @Binding var show: Bool
    
    var body: some View {
        VStack {
                    HStack {
                        Button(action: {
                            withAnimation(.easeOut) {
                                self.show.toggle()
                            }
                        
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.title)
                        }
                        .padding(.top)
                        .padding(.bottom, 25)
                        Spacer()
                    }
                    Spacer()
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://tangentsyste.ms/privacy-policy")!)
                    }) {
                        Text("Privacy Policy")
                    }
                    
                  Text("Made with  and  at")
                    .padding(.top, 25)
                    .font(.subheadline)
                    Text("Tangent Apps")
                        .font(.subheadline)
                    Text(" 2021")
                }
                .foregroundColor(.primary)
                .padding(.horizontal, 20)
                .frame(width: UIScreen.main.bounds.width / 1.5)
                .background((Color.white).edgesIgnoringSafeArea(.all))
                .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 1).shadow(radius: 3).edgesIgnoringSafeArea(.all))
    }
}
