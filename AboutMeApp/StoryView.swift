//
//  StoryTab.swift
//  AboutMeApp
//
//  Created by Anil Caliskan on 12.02.2024.
//

import SwiftUI

struct StoryView: View {
    //To let your story scroll if the text gets too long, wrap your Text view in a ScrollView.
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.body)
                    .padding()
            }
        }
        .padding([.top, .bottom], 50)
    }
}

#Preview {
    StoryView()
}
