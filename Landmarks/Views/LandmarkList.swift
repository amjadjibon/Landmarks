//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Amjad Hossain on 21/9/24.
//

import SwiftUI


struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: showFavoritesOnly)
            .navigationTitle("Landmarks")
            
        } detail: {
            Text("Select a landmark.")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
