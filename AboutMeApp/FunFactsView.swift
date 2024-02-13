//
//  FunFactsView.swift
//  AboutMeApp
//
//  Created by Anil Caliskan on 12.02.2024.
//

import SwiftUI

struct FunFactsView: View {
    //The variable funFact stores the fun fact displayed by this view. Because funFact uses @State, the fun fact Text view automatically updates with a new value whenever its value changes.
    @State private var funFact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button("Show Random Fact"){
                funFact = information.funFacts.randomElement()!
            }.padding()
                .background(Color.cyan)
                .cornerRadius(15)
    
        }
        .padding()
    }
}

#Preview {
    FunFactsView()
}
