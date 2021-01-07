//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rakibul Huda on 7/1/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){ item in
                FruitCardIView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 12 Pro")
    }
}
