//
//  BottomOnBoardNavigator.swift
//  OnBoardingUI
//
//  Created by Agus Cahyono on 26/07/20.
//

import SwiftUI


struct BottomOnBoardNavigator: View {
    
    var numberOfPages : Int
    @Binding var currentPage : Int
    
    var body: some View {
        
        ZStack(){
            HStack {
                Button(action: {
                    if self.currentPage == 0 {
                        self.currentPage = 0
                    } else {
                        self.currentPage -= 1
                    }
                }){
                    Text("SKIP")
                        .foregroundColor(.blue)
                        .font(.system(size: 16, weight: .regular))
                }
                .frame(width: 100)
                Spacer()
                
                PageIndicator(
                    currentIndex: currentPage,
                    pagesCount: numberOfPages)
                
                Spacer()
                Button(action: {
                    
                    if self.currentPage == self.numberOfPages - 1 {
                        self.currentPage = 0
                    } else {
                        self.currentPage += 1
                    }
                    
                }){
                    Text("NEXT")
                        .foregroundColor(.blue)
                        .font(.system(size: 16, weight: .regular))
                }
                .frame(width: 100)
            }
        }
    }
}
