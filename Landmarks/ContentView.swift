//
//  ContentView.swift
//  Landmarks
//
//  Created by Amjad Hossain on 21/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About")
                    .font(.title2)
                Text("Turtle Rock is a large, turtle-shaped rock formation located near the southern entrance to Joshua Tree National Park. It is a popular spot for rock climbers and hikers, offering stunning views of the surrounding desert landscape.")
                    .font(.body)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
