//
//  LandmarkList.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 15.08.2023.
//

import SwiftUI

struct LandmarkList: View {

    var body: some View {
		List(landmarks) { landmark in
			LandmarkRow(landmark: landmark)
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
