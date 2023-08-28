//
//  ThankYou.swift
//  SwiftUINavigationExample
//
//  Created by Harish on 28/08/23.
//

import SwiftUI

struct ThankYou: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        VStack {
            Text("Thank you!!")
                .font(.title)
            
            Spacer()
            Button("Home") {
                coordinator.popToHome()
            }
        }
    }
}

struct ThankYou_Previews: PreviewProvider {
    static var previews: some View {
        ThankYou()
    }
}
