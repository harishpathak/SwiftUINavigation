//
//  SwiftUINavigationExampleApp.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 25/08/23.
//

import SwiftUI

@main
struct SwiftUINavigationExampleApp: App {
    var body: some Scene {
        WindowGroup {
                MovieList()
                    .environmentObject(Coordinator())
            }
        }
}
