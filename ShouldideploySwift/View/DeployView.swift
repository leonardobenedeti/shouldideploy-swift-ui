//
//  DoNotDeployView.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 18/09/24.
//

import SwiftUI

struct DeployView: View {
    let shouldideployToday: ShouldideployModel
    var onRefresh: () -> Void
    
    var body: some View {
        ZStack{
            ColoredBackgroundView(color: shouldideployToday.shouldideploy ? Color.green : Color.red)
            VStack(spacing: 20){
                VStack{
                    Text(shouldideployToday.shouldideploy ? "Yes" : "No").font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(shouldideployToday.message).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                CustomButton(title: "Refresh", action: {
                    onRefresh()
                })
            }
        }
    }
}
