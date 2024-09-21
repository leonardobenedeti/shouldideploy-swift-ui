//
//  ContentView.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var shouldideployViewModel = ShouldideployViewModel()
    
    
    var body: some View {
        ZStack(alignment: .top){
            Text("Should I deploy today?")
                .padding(.top, 150)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
            if shouldideployViewModel.isLoading {
                LoadingView()
            } else {
                DeployView(shouldideployToday: shouldideployViewModel.shouldideployToday, onRefresh: {
                    shouldideployViewModel.fetchGuidance()
                })
            }
        }.onAppear{
            shouldideployViewModel.fetchGuidance()
        }
    }
}

#Preview {
    ContentView()
}



