//
//  LoadingView.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 19/09/24.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack(spacing: 50){
            VStack{
                Text("Wait...").font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Do nothing until we get your guidance").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            ProgressView().progressViewStyle(CircularProgressViewStyle())
        }
        
    
    }
}
