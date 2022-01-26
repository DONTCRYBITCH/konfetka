//
//  ViewControllerProtocols.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import Foundation

protocol ViewControllerPresentationLogic {
    func present(data: [BackendModel])
}

protocol ViewControllerDisplaylogic: AnyObject {
    func display(data: [ViewControllerCellModel])
}

protocol ViewControllerBusinessLogic {
    func fetchData()
}
