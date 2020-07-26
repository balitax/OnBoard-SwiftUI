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
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack(){
            
            if (currentPage == self.numberOfPages - 1) {
                Button(action: {
                    self.showingAlert = true
                }){
                    Text("GET STARTED NOW")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .regular))
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("ONBOARD"), message: Text("Get Started Now"), dismissButton: .default(Text("Got it!")))
                }
                .frame(width:
                        UIScreen.main.bounds.width,
                       height: 60)
                .background(Color(hex: "#0074E4"))
            } else {
                HStack {
                    Button(action: {
                        self.currentPage = self.numberOfPages - 1
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
                .frame(width:
                        UIScreen.main.bounds.width,
                       height: 60)
                .padding(.bottom, 0)
            }
            
        }
    }
}

//struct BottomOnBoardNavigator_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomOnBoardNavigator(numberOfPages: 5)
//    }
//}
