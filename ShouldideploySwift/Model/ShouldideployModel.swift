//
//  ShouldideployModel.swift
//  ShouldideploySwift
//
//  Created by Leonardo Benedeti on 18/09/24.
//

import Foundation

struct ShouldideployModel : Codable {
    let date : String
    let timezone : String
    let shouldideploy : Bool
    let message: String
}
