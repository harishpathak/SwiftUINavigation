//
//  Coordinator.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import Foundation
import SwiftUI

enum Route: Hashable {
    case movieList
    case movieDetail(movie: Movie)
    case castDetail(cast: Artist)
    case thankyou
    
    @ViewBuilder
    func viewForScreen() -> some View {
        switch self {
        case .movieList:
            MovieList()
        case .movieDetail(let movie):
            MovieDetail(movie: movie)
        case .castDetail(let artist):
            ArtistDetail(artist: artist)
        case .thankyou:
            ThankYou()
            
        }
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    // Clearing stack
    func popToHome() {
        path.removeLast(path.count)
    }
    
    // Manual navigation using path
    func goToThankYou() {
        path.append(Route.thankyou)
    }
}
