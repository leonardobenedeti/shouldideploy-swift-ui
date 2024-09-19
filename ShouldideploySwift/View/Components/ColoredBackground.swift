//
//  ColoredBackground.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 19/09/24.
//

import SwiftUI

struct ColoredBackgroundView: View {
    var color: Color
    
    var body: some View {
        color
            .edgesIgnoringSafeArea(.all).opacity(0.6)
    }
}
