//
//  ViewControllerAssembly.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import UIKit

struct ViewControllerAssembly {
    static func assemble() -> UIViewController {
        let presenter = ViewControllerPresenter()
        let interactor = ViewControllerInteractor(
            presenter: presenter
        )
        let view = ViewController(
            interactor: interactor
        )

        presenter.view = view
        return view
    }
}


