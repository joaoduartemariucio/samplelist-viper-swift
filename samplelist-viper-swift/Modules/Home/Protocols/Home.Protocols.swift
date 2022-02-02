//
//  Home.Protocols.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import Foundation
import UIKit

extension Module.Home {
    enum Protocols { }
}

protocol HomeViewToPresenterProtocol {

    var title: String? { get }
    var view: HomePresenterToViewProtocol? { get set }
    var interactor: HomePresenterToInteractorProtocol? { get set }
    var router: HomePresenterToRouterProtocol? { get set }

    func startFetchingTasks()
    func showDetailsController(navigationController: UINavigationController)
    func showCreateNewTaskController(navigationController: UINavigationController)
}

protocol HomePresenterToViewProtocol {

    func showTasks(taskArray: Array<Module.Home.Entity.Task>)
    func showError()
}

protocol HomePresenterToRouterProtocol {
    static func createModule() -> Module.Home.ViewController
    func pushToDetailsScreen(navigationConroller: UINavigationController)
    func pushToCreateNewTaskScreen(navigationConroller: UINavigationController)
}

protocol HomePresenterToInteractorProtocol {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
    func fetchTasks()
}

protocol HomeInteractorToPresenterProtocol {
    func tasksFetchedSuccess(taskArray: Array<Module.Home.Entity.Task>)
    func tasksFetchFailed()
}

extension Module.Home.Protocols {

    typealias ViewToPresenter = HomeViewToPresenterProtocol
    typealias PresenterToView = HomePresenterToViewProtocol
    typealias PresenterToRouter = HomePresenterToRouterProtocol
    typealias PresenterToInteractor = HomePresenterToInteractorProtocol
    typealias InteractorToPresenter = HomeInteractorToPresenterProtocol
}
