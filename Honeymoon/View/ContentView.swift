//
//  ContentView.swift
//  Honeymoon
//
//  Created by Alexandre Talatinian on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
