//
//  MovieListViewModel.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import Foundation
import SwiftUI

class MovieListViewModel: ObservableObject {
    
    @Published var movies: [Movie] = Bundle.main.decode([Movie].self, from: "Movies")!

}

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T? {
        guard let url = self.url(forResource: file, withExtension: "json") else {
            return nil
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let decodedObject = try decoder.decode(type, from: data)
            return decodedObject
        } catch {
            print("Error decoding JSON: \(error)")
            return nil
        }
    }
}
