//
//  ContentView.swift
//  liststarter
//
//  Created by Cloud Secrets on 16/05/2022.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen;
    var body: some View {
        NavigationView{
            List(videos, id: \.id) { video in
                NavigationLink(
                    destination: VideoDetailView(video: video), label: {
                        HStack{
                            Image(video.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                                .cornerRadius(5)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 10)
                            VStack(alignment: .leading,spacing: 0){
                                Text(video.title)
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                Text(video.uploadDate)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .fontWeight(.semibold)
                            }
                        }
                    })
                
            }
            .navigationTitle("Soan's Top 10")
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            VideoListView()
        }
    }
}
