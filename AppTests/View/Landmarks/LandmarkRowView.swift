//
//  LandmarkRowView.swift
//  AppTests
//
//  Created by Daniel on 05/09/22.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text(landmark.name)
            
            Spacer()
            
            if (landmark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        LandmarkRowView(landmark: landmarks[0])
    }
}




/**
 Landmark(1002, "Silver Salmon Creek", "Lake Clark National Park and Preserve", "Alaska", "Suscipit inceptos est felis purus aenean aliquet", "silversalmoncreek", Landmark.Coordinates(59.980_167, -152.665_167))
 */
