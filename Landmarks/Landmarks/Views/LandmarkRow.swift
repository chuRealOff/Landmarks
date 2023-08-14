//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 14.08.2023.
//

import SwiftUI

struct LandmarkRow: View {
	var landmark: Landmark

    var body: some View {
		HStack {
			landmark.image
				.resizable()
				.frame(width: 100, height: 100)
			Text(landmark.name)
			Spacer()
		}
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
