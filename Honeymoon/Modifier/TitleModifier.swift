//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Alexandre Talatinian on 29/04/2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}


