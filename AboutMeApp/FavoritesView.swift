//
//  FavoritesView.swift
//  AboutMeApp
//
//  Created by Anil Caliskan on 12.02.2024.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        //Try replacing the .frame modifier with .scaledToFit or .scaledToFill, or removing the .resizable modifier. Did anything happen to your images?
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            Text("Hobbies")
                .font(.title2)
            
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                }
                .padding()
            }
            .padding()
            
            Text("Foods")
                .font(.title2)
            
            HStack(spacing: 30) {
                ForEach(information.colors, id: \.self) { color in
                    color
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    FavoritesView()
}
