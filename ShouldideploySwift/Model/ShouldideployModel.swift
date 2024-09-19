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
    
    init(date: String = Date.now.ISO8601Format(), timezone: String = "São Paulo", shouldideploy: Bool = false, message: String = "Do nothing until we get your guidance") {
        self.date = date
        self.timezone = timezone
        self.shouldideploy = shouldideploy
        self.message = message
    }
}
