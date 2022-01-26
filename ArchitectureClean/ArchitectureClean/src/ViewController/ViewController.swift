//
//  ViewController.swift
//  ArchitectureClean
//
//  Created by Михаил М. on 25.01.2022.
//

import UIKit

class ViewController: UIViewController {
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .green
        return tableView
    }()
    
    private var interactor: ViewControllerBusinessLogic?
    private var dataToDisplay = [ViewControllerCellModel]()

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
        title = "Clean Arch"
        view.backgroundColor = .white
        setupView()
    }

    // MARK: - Private methods
    private func setupView(){
        view.addSubview(tableView)
        setupTableView()
    }
    private func setupTableView() {
        tableView.register(ViewControllerCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataToDisplay.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = UITableViewCell()
        return tableViewCell
    }

}
// MARK: - Display logic
extension ViewController: ViewControllerDisplaylogic {
    func display(data: [ViewControllerCellModel]) {
        dataToDisplay.removeAll()
        dataToDisplay.append(contentsOf: data)
        tableView.reloadData()
    }
}

