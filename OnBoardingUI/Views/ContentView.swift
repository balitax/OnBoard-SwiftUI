//
//  ContentView.swift
//  OnBoardingUI
//
//  Created by Agus Cahyono on 25/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentPageIndex = 0
    var pages = OnBoards.generate
    
    var body: some View {
        VStack {
            OnBoardingViewContainer(
                viewControllers: pages.map({  UIHostingController(rootView: OnBoardingSubView(board: $0) )  }), currentPage: self.currentPageIndex)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
