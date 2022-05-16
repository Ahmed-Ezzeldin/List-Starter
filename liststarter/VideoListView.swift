//
//  ContentView.swift
//  liststarter
//
//  Created by Cloud Secrets on 16/05/2022.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        List(0..<20) { item in
            HStack{
                Image("37-tips")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(5)
                VStack(alignment: .leading,spacing: 0){
                    Text("37 Tips for Jr Developers")
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    Text("January 1, 2022")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            VideoListView()
        }
    }
}
