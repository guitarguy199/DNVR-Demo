//
//  PodcastsView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct PodcastsView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        VStack {
            NavBar()
            
            CustomTabBar(tabIndex: $tabIndex)
            if tabIndex == 0 {
                BroncosView()
            } else if tabIndex == 1 {
                RockiesView()
            } else if tabIndex == 2 {
                NuggsView()
            } else if tabIndex == 3 {
                AvsView()
            }
            
            Spacer()
            
            Text("Podcasts")
            
            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
                .padding(.horizontal, 12)
    }
}


struct TabBarButton: View {
    
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .heavy : .regular)
                     .font(.custom("Avenir", size: 16))
                     .padding(.bottom, 10)
            .border(width: isSelected ? 2 : 1, edges: [.bottom], color: .black)
    }
}


struct CustomTabBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        HStack(spacing: 20) {
            TabBarButton(text: "Broncos", isSelected: .constant(tabIndex == 0))
                .onTapGesture { onButtonTapped(index: 0) }
            TabBarButton(text: "Rockies", isSelected: .constant(tabIndex == 1))
                        .onTapGesture { onButtonTapped(index: 1) }
            TabBarButton(text: "Nuggets", isSelected: .constant(tabIndex == 2))
                                .onTapGesture { onButtonTapped(index: 2) }
            TabBarButton(text: "Avalanche", isSelected: .constant(tabIndex == 3))
                                        .onTapGesture { onButtonTapped(index: 3) }
        }
  
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}


struct BroncosView: View {
    var body: some View {
        PodcastCollectionView(image: "broncos-podcast")
    }
}

struct RockiesView: View {
    var body: some View {
        PodcastCollectionView(image: "rockies-podcast")
        }
    }

struct AvsView: View {
    var body: some View {
        PodcastCollectionView(image: "avs-podcast")
    }
}

    struct NuggsView: View {
        var body: some View {
            PodcastCollectionView(image: "nuggets-podcast")
        }
    }


struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}


struct PodcastsView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsView()
    }
}
