//
//  ViewController.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import UIKit

class ViewController: UIViewController {
    private var interactor: ViewControllerBusinessLogic

    init(
        interactor: ViewControllerBusinessLogic
    ) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    // MARK: - Private methods
    private func setup() {}
}
// MARK: - Display logic
extension ViewController: ViewControllerDisplaylogic {
    func displayData() {}
}

