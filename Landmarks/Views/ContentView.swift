//
//  ContentView.swift
//  Landmarks
//
//  Created by Amjad Hossain on 21/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    var body: some View {
        LandmarkList()
            .environment(modelData)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
