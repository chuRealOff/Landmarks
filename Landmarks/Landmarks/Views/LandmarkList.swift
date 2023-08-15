//
//  LandmarkList.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 15.08.2023.
//

import SwiftUI

struct LandmarkList: View {
	@State var showFavoritesOnly = true

	var filteredLandmarks: [Landmark] {
		landmarks.filter { landmark in
			(!showFavoritesOnly || landmark.isFavorite)
		}
	}

	var body: some View {
		NavigationView {
			List(filteredLandmarks) { landmark in
				NavigationLink {
					LandmarkDetail(landmark: landmark)
				} label: {
					LandmarkRow(landmark: landmark)
				}

			}
			.navigationTitle("Landmarks")
			.navigationBarTitleDisplayMode(.large)
		}
	}
}

struct LandmarkList_Previews: PreviewProvider {
	static var previews: some View {
		LandmarkList()
	}
}
