//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Amjad Hossain on 29/9/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

#Preview {
    FavoriteButton(
        isSet: .constant(true)
    )
}
