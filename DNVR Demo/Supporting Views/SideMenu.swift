//
//  SideMenu.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/2/21.
//

import SwiftUI


struct SideMenu: View {
    
    @State var menuOpen: Bool = false
    
    var body: some View {
        ZStack {
            if !self.menuOpen {
                Button {
                    self.openMenu()
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .foregroundColor(.white)
                }
            }
        }
        
        MenuBody(width: 270, isOpen: self.menuOpen, menuClose: self.openMenu)
        
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
}

struct MenuBody: View {
    
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
                MenuContent()
                    .frame(width: self.width)
                            .background(Color.white)
                            .offset(x: self.isOpen ? 0 : -self.width)
                            .animation(.default)
                Spacer()
            }
      
    }
}
}

//struct SideMenu_Previews: PreviewProvider {
//
//    func openMenu() {
//
//    }
//
//    static var previews: some View {
//        SideMenu(width: 270, isOpen: true, menuClose: self.menuClose())
//    }
//}

struct MenuContent: View {
    var body: some View {
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
