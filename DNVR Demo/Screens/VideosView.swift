//
//  VideosView.swift
//  DNVR Demo
//
//  Created by Austin O'Neil on 8/1/21.
//

import SwiftUI

struct VideosView: View {
    
    let videos = [
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!),
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!),
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!),
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!),
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!),
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!),
        Video(title: "DNVR Explains: When 'sign stealing' crosses the line.", video: UIImage(named: "dnvr-explains-video")!)
    ]
    
    
    var body: some View {
        VStack {
            NavBar()
            
            Spacer()
            
            Text("Videos")
                .font(.largeTitle)
                .bold()
            
            List(videos) { video in
                VideoCell(video: video)
            }
            .preferredColorScheme(.light)
            
            Spacer()
        }
    }
}

struct VideoCell: View {
    
    var video: Video
    
    var body: some View {
        VStack {
            Image(uiImage: video.video)
                .resizable()
                .frame(width: 160, height: 100)
            
            Text(video.title)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .minimumScaleFactor(0.75)
        }
    }
}

struct VideosView_Previews: PreviewProvider {
    static var previews: some View {
        VideosView()
    }
}
