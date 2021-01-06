//
//  FruitCardIView.swift
//  Fructus
//
//  Created by Rakibul Huda on 6/1/21.
//

import SwiftUI
// MARK: - PROPERTIES

// MARK: - BODY

struct FruitCardIView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                // FRUIT: TITLE
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text("Blueberries are sweet, nutritous and wildly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
    }
}

// MARK: - PREVIEW

struct FruitCardIView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardIView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
