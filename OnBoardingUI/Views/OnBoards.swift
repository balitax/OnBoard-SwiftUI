//
//  OnBoards.swift
//  OnBoardingUI
//
//  Created by Agus Cahyono on 24/07/20.
//

import SwiftUI

struct OnBoards: Identifiable {
    
    let id: UUID
    let image: String
    let heading: String
    let description: String
    
    static var generate: [OnBoards] {
        [
            OnBoards(
                id: UUID(),
                image: "onboard1",
                heading: "In hac habitasse platea dictumst.",
                description: "Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque."),
            OnBoards(
                id: UUID(),
                image: "onboard2",
                heading: "In hac habitasse platea dictumst.",
                description: "Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque."),
            OnBoards(
                id: UUID(),
                image: "onboard3",
                heading: "In hac habitasse platea dictumst.",
                description: "Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.")
            
        ]
    }
}
