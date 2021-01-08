//
//  SettingsView.swift
//  Fructus
//
//  Created by Rakibul Huda on 8/1/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // MARK: - SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus",labelImage: "info.circle"), content: {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height:80)
                                .cornerRadius(9.0)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    })
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical, 4)
                        
                        VStack(spacing: 12) {
                            Text("If you wish, you can restart the application by toggle the swicth in the box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .font(.footnote)
                                .padding(.vertical, 8)
                                .frame(minHeight:60)
                                .layoutPriority(1)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            })
                            .padding()
                            .background(Color(UIColor.tertiarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))
                            .cornerRadius(8.0)
                        }
                        
                    
                        
                    })
                    
                    // MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        
                        SettingsRowView(name: "Developer", content: "Rakibul Huda")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "LinkedIn", linkLabel: "Rakibul Huda", linkDestination: "www.linkedin.com/in/rakibul-huda-555bb6153/")
                        SettingsRowView(name: "Version", content: "1.0")
                    })
                }
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
