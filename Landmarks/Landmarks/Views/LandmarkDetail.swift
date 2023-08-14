//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 15.08.2023.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
		VStack {
			MapView()
				.ignoresSafeArea(edges: .top)
				.frame(height: 300)

			CircleImage()
				.offset(y: -130)
				.padding(.bottom, -130)

			VStack(alignment: .leading) {
				Text("Turtle Rock")
					.font(.title)
				HStack {
					Text("Joshua Tree National Park")
					Spacer()
					Text("California")
				}
				.font(.subheadline)
				.foregroundColor(.secondary)
			}
			.padding()

			Spacer()
		}
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
