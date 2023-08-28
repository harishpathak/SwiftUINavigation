//
//  Movie.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import Foundation

struct Movie: Decodable, Hashable, Equatable {
    var name: String
    var image: String
    var year: Int
    var cast: [Artist]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        lhs.name == rhs.name && lhs.year == rhs.year
    }
}

struct Artist: Decodable, Hashable {
    var name: String
    var age: Int
    var image: String
}
