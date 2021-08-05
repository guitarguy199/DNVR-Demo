//
//  TestMenu.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/5/21.
//

import SwiftUI

struct TestMenu: View {
    var body: some View {
        
        VStack {
            
//            HStack {
//
//                Spacer()
//
//                Button {
//
//                } label: {
//                    Image(systemName: "xmark")
//                }
//                .padding(.trailing, 10)
//
//            }
            
            List {
                Text("My Profile").onTapGesture {
                    print("My Profile")
                }
                Text("Posts").onTapGesture {
                    print("Posts")
                }
                Text("Logout").onTapGesture {
                    print("Logout")
                }
            }
        }
        
    }
}

struct TestSideMenu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.3))
            .opacity(self.isOpen ? 1.0 : 0.0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.menuClose()
            }
            
            HStack {
                
                TestMenu()
                    .frame(width: self.width)
                    .background(Color.white)
                    .offset(x: self.isOpen ? 0 : -self.width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}

struct TestNavBar: View {
    @State var menuOpen: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    if !self.menuOpen {
                        Button(action: {
                            self.openMenu()
                        }, label: {
                            Image(systemName: "line.horizontal.3")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding()
                                .foregroundColor(.white)
                        })
                    }
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
                .background(Color.black)
                
                Spacer()
            }
           
            
            TestSideMenu(width: 270,
                     isOpen: self.menuOpen,
                     menuClose: self.openMenu)
        }
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
}

struct TestMenu_Previews: PreviewProvider {

    func openMenu() {

    }

    static var previews: some View {
        TestNavBar()
    }
}
