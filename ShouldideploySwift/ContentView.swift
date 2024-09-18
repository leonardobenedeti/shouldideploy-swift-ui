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
        VStack{
            if shouldideployViewModel.isLoading {
                VStack{
                    ProgressView().progressViewStyle(CircularProgressViewStyle())
                    DeployView(shouldideployToday: ShouldideployModel(date: Date.now.ISO8601Format(), timezone: "São Paulo", shouldideploy: false, message: "Na dúvida não faça nada até conseguirmos carregar..."))
                }
            } else if let shouldideployToday = shouldideployViewModel.shouldideployToday {
                DeployView(shouldideployToday: shouldideployToday)
                Button(action: {
                    shouldideployViewModel.fetchGuidance()
                }, label: {
                    Text(
                        shouldideployToday.shouldideploy ?
                            "Quer conferir de novo ?" :
                            "E agora, será que já posso ?"
                    )
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
