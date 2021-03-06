//
//  Landmark.swift
//  Landmark
//
//  Created by ichikawa on 2021/11/17.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var category: Category
    
    private var imageName: String
    private var coordinates: Coordinates
}

// MARK: - computed property
extension Landmark {

    var image: Image {
        Image(imageName)
    }

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

extension Landmark {
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

extension Landmark {
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
