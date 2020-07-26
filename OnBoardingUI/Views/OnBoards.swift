//
//  OnBoards.swift
//  RoomQ
//
//  Created by Agus RoomMe on 24/07/20.
//

import SwiftUI

struct OnBoards: Identifiable {
    
    let id: UUID
    let image: String
    let heading: String
    let heading2: String
    let description: String
    
    static var getAll: [OnBoards] {
        [
            OnBoards(
                id: UUID(),
                image: "onboarding1",
                heading: "Find",
                heading2: "Destination",
                description: "Start with find RoomMe around you or other locations might you like"),
            OnBoards(
                id: UUID(),
                image: "onboarding2",
                heading: "Enjoy!",
                heading2: "Your Room",
                description: "Looking for a comfy with the best room facilities never been so simple? Let's start!"),
            OnBoards(
                id: UUID(),
                image: "onboarding3",
                heading: "Select",
                heading2: "The Date",
                description: "Arrange easily your stay period to follow what your needs")
            
        ]
    }
}
