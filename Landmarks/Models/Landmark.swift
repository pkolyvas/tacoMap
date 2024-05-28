//
//  Landmark.swift
//  Landmarks
//
//  Created by Petros Kolyvas on 2024-05-16.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var country: String
    var description: String


    private var imageName: String
    var image: Image {
        Image(imageName)
    }


    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }


    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

struct User: Codable {
    var id: UUID
    var name: String
    var email: String
    var friends: Set<UUID>?
    
    // unclear if we need this initializer here
    init(id: UUID, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
}
