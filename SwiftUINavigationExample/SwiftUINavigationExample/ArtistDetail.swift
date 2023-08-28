//
//  ArtistDetail.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import SwiftUI

struct ArtistDetail: View {
    @EnvironmentObject var coordinator: Coordinator
    var artist: Artist
    var body: some View {
            VStack {
                Text(artist.name)
                    .font(.title)
                    .bold()
                Text("\(artist.age) years")
                    .font(.headline)
                Image(artist.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                Button("Home") {
                    coordinator.popToHome()
                }
            }
    }
}

struct ArtistDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArtistDetail(artist: Artist(name: "Tom Cruise", age: 45, image: "tom"))
            .environmentObject(Coordinator())
    }
}
