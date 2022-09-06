//
//  LandmarkModel.swift
//  AppTests
//
//  Created by Daniel on 05/09/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    private var imageName: String
    private var coordinates: Coordinates
    
    init(_ id: Int,_ name: String,_ park: String,_ state: String,_ description: String,_ imageName: String,_ coordinates: Coordinates) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description = description
        self.imageName = imageName
        self.coordinates = coordinates
        self.isFavorite = false
    }
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
        
        init(_ latitude: Double,_ longitude: Double) {
            self.latitude = latitude
            self.longitude = longitude
        }
    }
    
}

struct Previews_LandmarkModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
