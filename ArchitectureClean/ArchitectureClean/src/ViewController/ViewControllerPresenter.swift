//
//  ViewControllerPresenter.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import Foundation

class ViewControllerPresenter {
    weak var view: ViewControllerDisplaylogic?
}

// MARK: - Presentation logic
extension ViewControllerPresenter: ViewControllerPresentationLogic{
    func presentData() {}
}
