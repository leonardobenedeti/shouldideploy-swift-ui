//
//  DoNotDeployView.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 18/09/24.
//

import SwiftUI

struct DeployView: View {
    let shouldideployToday: ShouldideployModel
    
    var body: some View {
        NavigationView {
            VStack{
                Text(shouldideployToday.message)
            }
        }
    }
}
