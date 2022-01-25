//
//  ViewControllerProtocols.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import Foundation

protocol ViewControllerDisplaylogic: AnyObject {
    func displayData()
}

protocol ViewControllerPresentationLogic {
    func presentData()
}

protocol ViewControllerBusinessLogic {
    func fetchData()
}
