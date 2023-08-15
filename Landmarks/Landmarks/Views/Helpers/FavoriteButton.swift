//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 15.08.2023.
//

import SwiftUI

struct FavoriteButton: View {
	@Binding var isSet: Bool

    var body: some View {
		Button {
			isSet.toggle()
		} label: {
			Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
				.labelStyle(.iconOnly)
				.foregroundColor(isSet ? .yellow : .gray)
		}

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
		FavoriteButton(isSet: .constant(true))
    }
}
