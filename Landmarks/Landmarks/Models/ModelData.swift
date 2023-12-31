//
//  ModelData.swift
//  Landmarks
//
//  Created by CHURILOV DMITRIY on 14.08.2023.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
	@Published var landmarks: [Landmark] = load("landmarkData.json")
	var hikes: [Hike] = load("hikeData.json")
	@Published var profile = Profile._default_

	var features: [Landmark] {
		landmarks.filter { $0.isFeatured }
	}

	var categories: [String: [Landmark]] {
		Dictionary(
		grouping: landmarks,
		by: { $0.category.rawValue }
		)
	}
}

func load<T: Decodable>(_ filename: String) -> T {
	let data: Data

	guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
	else {
		fatalError("Couldn't find \(filename) in main bundle.")
	}

	do {
		try data = Data(contentsOf: file)
	} catch {
		fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
	}

	do {
		return try JSONDecoder().decode(T.self, from: data)
	} catch {
		fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
	}

}
