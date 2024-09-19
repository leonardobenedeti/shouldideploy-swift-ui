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
        ZStack{
            if shouldideployViewModel.isLoading {
                ColoredBackgroundView(color: Color.yellow)
                LoadingView()
            } else {
                ColoredBackgroundView(color: shouldideployViewModel.shouldideployToday.shouldideploy ? Color.green : Color.red)
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



