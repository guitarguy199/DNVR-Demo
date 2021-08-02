//
//  StoreView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI
import SafariServices

struct StoreView: View {
    
    @State var showStore = false
    
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            Button {
                self.showStore = true
            } label: {
                VStack {
                    Image(systemName: "cart.circle")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Visit the Locker")
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding(.top, 30)
                        .foregroundColor(.orange)
                    
                }
    
            }
            .sheet(isPresented: self.$showStore, content: {
                SFSafariViewWrapper(url: URL(string: "https://dnvrlocker.com")!)
            })
            
            Spacer()
        }
    }
}


struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL
       func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
           return SFSafariViewController(url: url)
       }
       func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
           return
       }
}


struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
            .preferredColorScheme(.dark)
    }
}
