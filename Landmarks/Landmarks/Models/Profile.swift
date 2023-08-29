//
//  Profile.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 29.08.2023.
//

import Foundation

struct Profile {
	var userName: String
	var prefersNotifications = true
	var seasonalPhoto = Season.winter
	var goalDate = Date()

	static let _default_ = Profile(userName: "g_kumar")

	enum Season: String, CaseIterable, Identifiable {
		case spring = "🌷"
		case summer = "☀️"
		case autumn = "🍂"
		case winter = "⛄️"

		var id: String { rawValue }
	}
}
