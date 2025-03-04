//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rakibul Huda on 8/1/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - PROPERTIES
    
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        Divider().padding(.vertical, 4)
        HStack {
            Text(name)
                .foregroundColor(.gray)
            Spacer()
            if content != nil {
                Text(content!)
            } else if linkLabel != nil && linkDestination != nil {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square")
                    .foregroundColor(.pink)
            }
        }
    }
}

//MARK: - PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Rakib")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "LinkedIn", linkLabel: "Rakibul Huda", linkDestination: "www.linkedin.com/in/rakibul-huda-555bb6153/")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
