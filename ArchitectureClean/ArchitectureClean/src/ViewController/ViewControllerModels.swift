//
//  ViewControllerModels.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import Foundation

struct WelcomeElement: Codable {
    let packetID: String
    let enableCost: String
    let subscriptionCost: String
    let autoFeeDate: String

    enum CodingKeys: String, CodingKey {
        case packetID = "packetId"
        case enableCost, subscriptionCost, autoFeeDate
    }
}



