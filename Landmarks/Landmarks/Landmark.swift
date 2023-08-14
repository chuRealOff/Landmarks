//
//  Landmark.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 14.08.2023.
//

import Foundation

struct Landmark: Hashable, Codable {
	var id: String
	var name: String
	var park: String
	var state: String
	var description: String
}
