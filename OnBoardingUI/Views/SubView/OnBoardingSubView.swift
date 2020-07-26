//
//  OnBoardingSubView.swift
//  OnBoardingUI
//
//  Created by Agus Cahyono on 26/07/20.
//

import SwiftUI

struct OnBoardingSubView: View {
    
    var board = OnBoards.generate.first!
    
    var body: some View {
        VStack {
            Image(board.image)
                .resizable()
                .frame(width: 298, height: 240)
                .aspectRatio(contentMode: .fill)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(board.heading)
                    .foregroundColor(Color.primary)
                    .fontWeight(.semibold)
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.top, 60)
                
                Text(board.description)
                    .foregroundColor(Color.secondary)
                    .fontWeight(.regular)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.leading)
                    .lineSpacing(8)
                    .padding(.top, 16)
            }.padding(.horizontal)
        }
        .padding(.top, 100)
    }
}

struct OnBoardingSubView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingSubView()
    }
}
