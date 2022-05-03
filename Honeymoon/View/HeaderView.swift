//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Alexandre Talatinian on 29/04/2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTY
    
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    let hapics = UINotificationFeedbackGenerator()
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            

            // Button info circle
            Button(action: {
                // ACTION
                playSound(sound: "sound-click", type: "mp3")
                self.hapics.notificationOccurred(.success)
                self.showInfoView.toggle()
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView) {
                InfoView()
            }
            

            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                // ACTION
                playSound(sound: "sound-click", type: "mp3")
                self.hapics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        }
        .padding()
    }
}

    // MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
