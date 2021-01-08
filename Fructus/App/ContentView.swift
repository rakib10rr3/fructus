//
//  ContentView.swift
//  Fructus
//
//  Created by Rakibul Huda on 6/1/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits = fruitsData
    
    @State var isShowingSettings = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationBarTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
