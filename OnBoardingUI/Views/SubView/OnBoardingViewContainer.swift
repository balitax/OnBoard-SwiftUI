//
//  OnBoardingViewContainer.swift
//  OnBoardingUI
//
//  Created by Agus Cahyono on 26/07/20.
//

import SwiftUI

struct OnBoardingViewContainer<T: View>  : View {
    
    var viewControllers: [UIHostingController<T>]
    @State var currentPage = 0
    
    var body: some View {
        
        return VStack {
            PageViewController(
                currentPageIndex: self.$currentPage,
                viewControllers: viewControllers)
            
            Spacer()
            BottomOnBoardNavigator(
                numberOfPages: self.viewControllers.count,
                currentPage: $currentPage)
        }
    }
}

struct PageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingViewContainer(viewControllers: OnBoards.generate.map({  UIHostingController(rootView: OnBoardingSubView(board: $0) )  }))
    }
}
