//
//  Home.ViewController.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import UIKit

extension Module.Home {

    class ViewController: UIViewController {

        var presentor: Protocols.ViewToPresenter?
        private let mainView = View()
        var taskArrayList: Array<Module.Home.Entity.Task> = Array()

        override func loadView() {
            view = mainView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            presentor?.startFetchingTasks()
        }
    }
}

extension Module.Home.ViewController: Module.Home.Protocols.PresenterToView {

    func showTasks(taskArray: Array<Module.Home.Entity.Task>) {
        taskArrayList = taskArray
    }

    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching tasks", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
