//
//  TeamView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct TeamView: View {
    
    let teams = [
        Team(name: "Denver Broncos", logo: UIImage(named: "broncos-logo")!),
        Team(name: "Colorado Rockies", logo: UIImage(named: "rockies-logo")!),
        Team(name: "Denver Nuggets", logo: UIImage(named: "nuggs-logo")!),
        Team(name: "Colorado Avalanche", logo: UIImage(named: "avs-logo")!)
    ]
    
    var body: some View {
        VStack {
           NavBar()
            
            Spacer()
            
            Text("Teams")
                .font(.largeTitle)
                
            
            List(teams) { team in
                TeamCell(team: team)
            }
            
            
            Spacer()
        }

    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}

struct TeamCell: View {
    
    var team: Team
    
    var body: some View {
        VStack(alignment: .center) {
            Image(uiImage: team.logo)
                .resizable()
                .frame(width: 130, height: 130, alignment: .center)
            Spacer()
            HStack {
                Spacer()
                Text(team.name)
                Spacer()
            }
            Spacer()

          
                
        }
    }
}
