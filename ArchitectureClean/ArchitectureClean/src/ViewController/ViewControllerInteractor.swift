//
//  ViewControllerInteractor.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import Foundation

class ViewControllerInteractor {
    private var presenter: ViewControllerPresentationLogic?

    init(
        presenter: ViewControllerPresentationLogic
    ){
        self.presenter = presenter
    }
}

// MARK: - Buisness logic
extension ViewControllerInteractor: ViewControllerBusinessLogic {
    func fetchData() {}
}
