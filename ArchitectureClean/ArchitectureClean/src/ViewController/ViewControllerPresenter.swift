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

    func present(data: [BackendModel]) {
        let viewModel = data.map { model -> ViewControllerCellModel in
            let cellModel = ViewControllerCellModel(
                vcId: Int(model.vcId) ?? 0,
                titleText: model.text,
                bodyText: String(model.rating)
            )
            return cellModel
        }
        view?.display(data: viewModel)
    }
}
