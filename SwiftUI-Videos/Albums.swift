//
//  File.swift
//  SwiftUI-Videos
//
//  Created by Іван Штурхаль on 12.09.2023.
//

import Foundation


// створити структуру для зберігання даних
struct Album: Identifiable {
    var id = UUID()
    var imageName: String
    var artistName: String
    var albumName: String
}
// створити структуру з статичними  даними
struct AlbumList {
    static let topAlbums = [
    Album(imageName: "Britney Spears - Lucky", artistName: "Britney Spears", albumName: "Lucky"),
    Album(imageName: "Charlie Puth - Loser", artistName: "Charlie Puth", albumName: "Loser"),
    Album(imageName: "Cher - Strong", artistName: "Cher", albumName: "Believe"),
    Album(imageName: "Doja Cat - Woman", artistName: "Doja Cat", albumName: "Woman"),
    Album(imageName: "Lady Gaga - Love game", artistName: "Lady Gaga", albumName: "Love game"),
    Album(imageName: "Lana Del Rey - Cola", artistName: "Lana Del Rey", albumName: "Cola"),
    Album(imageName: "Madonna - I don't give A", artistName: "Madonna", albumName: "MDNA"),
    Album(imageName: "Madonna, Justin Timberlake - 4 minutes", artistName: "Madonna, Justin Timberlake", albumName: "4 minutes"),
    Album(imageName: "Shakira - She wolf", artistName: "Shakira", albumName: "She wolf"),
    Album(imageName: "Taylor Swift - Blank Space", artistName: "Taylor Swift", albumName: "Blank Space"),
    Album(imageName: "Tove Lo - Borderline", artistName: "Tove Lo", albumName: "Borderline")
    ]
}

