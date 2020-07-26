//
//  PageIndicator.swift
//  OnBoardingUI
//
//  Created by Agus Cahyono on 24/07/20.
//

import SwiftUI

struct PageIndicator: View {
    
    var currentIndex: Int = 0
    
    var pagesCount: Int = 4
    var onColor: Color = Color(hex: "#2C2828")
    var offColor: Color = Color(hex: "#2C2828").opacity(0.1)
    
    var body: some View {
        HStack{
            ForEach(0..<pagesCount) { i in
                if (i == self.currentIndex) {
                    Circle()
                        .foregroundColor(self.onColor)
                        .frame(width: 10, height: 10)
                        .cornerRadius(3)
                } else {
                    Circle()
                        .foregroundColor(self.offColor)
                        .frame(width: 6, height: 6)
                }
                
            }
        }
    }
}

struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicator()
            .preferredColorScheme(.light)
    }
}
