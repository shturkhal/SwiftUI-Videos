//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Іван Штурхаль on 12.09.2023.
//

import SwiftUI

struct ContentView: View {
    var albums: [Album] = []
    
    var body: some View {
        NavigationView {
            List(albums) { album in
                HStack {
                    Image(album.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .cornerRadius(8)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        
                        Text (album.albumName)
                            .fontWeight(.semibold)
                        Spacer().frame(height: 5)
                        Text(album.artistName)
                            .font ( .subheadline)
                            .foregroundColor (.secondary)
                    }
                }.navigationTitle("Albums")
                
                
            }
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(albums: AlbumList.topAlbums)
        }
        
    }
}
