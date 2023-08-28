//
//  MovieList.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import SwiftUI

struct MovieList: View {
    @ObservedObject var viewModel = MovieListViewModel()
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                List(viewModel.movies, id: \.name) { movie in
                    NavigationLink(value: Route.movieDetail(movie: movie)) {
                        HStack {
                            Image(movie.image)
                                .resizable()
                                .frame(width: 150, height: 200)
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Title: \(movie.name)")
                                    .font(.headline)
                                    .foregroundColor(.accentColor)
                                Text("Year: \(movie.year)")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                .navigationTitle("Movies List")
            }
            .navigationDestination(for: Route.self) { route in
                route.viewForScreen()
            }
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        NavigationStack {
            MovieList()
                .environmentObject(coordinator)
        }
    }
}
