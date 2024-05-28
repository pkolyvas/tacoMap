//
//  CircleImage.swift
//  Landmarks
//
//  Created by Petros Kolyvas on 2024-05-16.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("tacos_charly"))
}
