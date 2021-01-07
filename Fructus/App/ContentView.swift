//
//  ContentView.swift
//  Fructus
//
//  Created by Rakibul Huda on 6/1/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationBarTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
