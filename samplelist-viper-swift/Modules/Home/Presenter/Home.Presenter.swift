//
//  Home.Presenter.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import Foundation
import UIKit

extension Module.Home {

    class Presenter: Protocols.ViewToPresenter {

        var title: String? { "My Todo" }

        var view: HomePresenterToViewProtocol?
        var interactor: HomePresenterToInteractorProtocol?
        var router: HomePresenterToRouterProtocol?

        func startFetchingTasks() {
            interactor?.fetchTasks()
        }

        func showDetailsController(navigationController: UINavigationController) {
            router?.pushToDetailsScreen(navigationConroller: navigationController)
        }

        func showCreateNewTaskController(navigationController: UINavigationController) {
            router?.pushToCreateNewTaskScreen(navigationConroller: navigationController)
        }
    }
}

extension Module.Home.Presenter: Module.Home.Protocols.InteractorToPresenter {

    func tasksFetchedSuccess(taskArray: Array<Module.Home.Entity.Task>) {
        view?.showTasks(taskArray: taskArray)
    }

    func tasksFetchFailed() {
        view?.showError()
    }
}
