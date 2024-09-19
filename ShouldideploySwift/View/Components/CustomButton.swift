//
//  CustomButton.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 19/09/24.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
        }
    }
}
