//
//  Home.ViewController.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import UIKit

extension Module.Home {

    class ViewController: UIViewController {

        typealias Cell = Module.Home.View.Cell

        var presentor: Protocols.ViewToPresenter?
        private let mainView = View()
        var taskArrayList: Array<Module.Home.Entity.Task> = Array()

        override func loadView() {
            view = mainView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            setupTableView()
            setupNavigation()
            presentor?.startFetchingTasks()
        }

        func setupNavigation() {
            title = presentor?.title
            navigationController?.navigationBar.prefersLargeTitles = true
        }

        func setupTableView() {
            mainView.tableView.delegate = self
            mainView.tableView.dataSource = self
        }
    }
}

extension Module.Home.ViewController: Module.Home.Protocols.PresenterToView {

    func showTasks(taskArray: Array<Module.Home.Entity.Task>) {
        taskArrayList = taskArray
        mainView.tableView.reloadData()
    }

    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching tasks", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

extension Module.Home.ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArrayList.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell else {
            return UITableViewCell()
        }

        cell.titleLabel.text = taskArrayList[indexPath.row].name
        cell.descriptionLabel.text = taskArrayList[indexPath.row].description
        cell.setupPriority(taskArrayList[indexPath.row].priority)

        return cell
    }
}
