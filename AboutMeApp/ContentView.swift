//
//  ContentView.swift
//  AboutMeApp
//
//  Created by Anil Caliskan on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //The tabItem modifier only accepts Label, Text, and Image views. Including any other type of view, such as Button, results in an empty tab item.
        
        TabView {
            HomeView()
                .tabItem {
                    Label(
                        "Home",
                        systemImage: "person"
                    )
                }
            
            StoryView()
                .tabItem {
                    Label(
                        "Story",
                        systemImage: "book"
                    )
                }
            
            FavoritesView()
                .tabItem{
                    Label(
                        "Favorites",
                        systemImage: "star"
                    )
                }
            
            FunFactsView()
                .tabItem {
                    Label(
                        "Fun Facts",
                        systemImage: "hand.thumbsup"
                    )
                }
             
        }
    }
}

#Preview {
    ContentView()
}
