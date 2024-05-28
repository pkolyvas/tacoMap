//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Petros Kolyvas on 2024-05-16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Taquerias")
        } detail: {
            Text("Select a taqueria")
        }
    }
}

#Preview {
    LandmarkList()
}
