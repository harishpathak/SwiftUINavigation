//
//  MovieDetail.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import SwiftUI

struct MovieDetail: View {
    @EnvironmentObject var coordinator: Coordinator
    var movie: Movie
    
    var body: some View {
            VStack {
                Text(movie.name)
                    .font(.title)
                Text(String(movie.year))
                    .font(.headline)
                Image(movie.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Text("Cast")
                    .font(.title2)
                    .bold()
                    .padding(.top)
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 20) {
                        ForEach(movie.cast, id: \.name) { cast in
                            NavigationLink(value: Route.castDetail(cast: cast)) {
                                Image(cast.image)
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .cornerRadius(60)
                            }
                        }
                    }
                }
                .frame(height: 150)
                
                Spacer()
                Button("Thank You!") {
                    coordinator.goToThankYou()
                }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie(name: "Unknown", image: "mi7", year: 1998, cast: [Artist(name: "Tom", age: 38, image: "tom"), Artist(name: "Hayley", age: 38, image: "hayley")]))
            .environmentObject(Coordinator())
    }
}
