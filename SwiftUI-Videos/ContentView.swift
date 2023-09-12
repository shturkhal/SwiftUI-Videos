//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Іван Штурхаль on 12.09.2023.
//

import SwiftUI

struct ContentView: View {
    // змінна для ініциалізації (див Content view)
    var albums: [Album] = []
    
    var body: some View {
        // навігація вʼю
        NavigationView {
            //aka Table view
            List(albums) { album in
                //горизонтальний стек
                HStack {
                    Image(album.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90)
                        .cornerRadius(8)
                    
                    Spacer().frame(width: 16)
                    //вертикальний стек
                    VStack(alignment: .leading) {
                        
                        Text (album.albumName)
                            .fontWeight(.semibold)
                        Spacer().frame(height: 5)
                        Text(album.artistName)
                            .font ( .subheadline)
                            .foregroundColor (.secondary)
                    }
                }.navigationTitle("Albums") //назва навігації
            }
        }
    }
    // в ініціалізатор внести вхідні дані зі структури
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(albums: AlbumList.topAlbums)
        }
    }
}
