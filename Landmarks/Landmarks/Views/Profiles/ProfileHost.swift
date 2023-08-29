//
//  ProfileHost.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 29.08.2023.
//

import SwiftUI

struct ProfileHost: View {
	@State private var draftProfile = Profile._default_

    var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			ProfileSummary(profile: draftProfile)
		}
		.padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
