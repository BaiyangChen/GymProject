//
//  ContentView.swift
//  EmojiLover
//
//  Created by bryan chen on 2024-07-06.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Discover")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Discover")
                }
            
            Text("Saved")
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Saved")
                }
            
            Text("Studio")
                .tabItem {
                    Image(systemName: "location")
                    Text("Location")
                }
        }
        .onAppear(){
            UITabBar.appearance().backgroundColor = .black
            UITabBar.appearance().barTintColor = .gray
        }
        .tint(.white)
    }
}

struct ContenView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
