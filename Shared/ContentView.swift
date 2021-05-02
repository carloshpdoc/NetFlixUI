//
//  ContentView.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 01/04/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("1")
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("1")
                }.tag(1)
            
            Text("FIRST")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("1")
                }.tag(2)
            
            Text("FIRST")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("1")
                }.tag(3)
            
            Text("FIRST")
                .tabItem {
                    Image(systemName: "equal")
                    Text("1")
                }.tag(4)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
