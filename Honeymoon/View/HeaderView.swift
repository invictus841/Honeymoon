//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Alexandre Talatinian on 29/04/2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            

            // Button info circle
            Button(action: {
                // ACTION
                print("Information")
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            

            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                // ACTION
                print("Guide")
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
        }
        .padding()
    }
}

    // MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
