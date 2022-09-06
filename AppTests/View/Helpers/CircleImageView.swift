//
//  CircleImage.swift
//  AppTests
//
//  Created by Daniel on 05/09/22.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
    
    var body: some View {
       image
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
