//
//  Home.Router.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import UIKit

extension Module.Home {

    class Router: Protocols.PresenterToRouter {

        static func createModule() -> Module.Home.ViewController {

            let view = Module.Home.ViewController()
            var presenter: Protocols.ViewToPresenter & Protocols.InteractorToPresenter = Module.Home.Presenter()
            var interactor: Protocols.PresenterToInteractor = Module.Home.Interactor()
            let router: Protocols.PresenterToRouter = Module.Home.Router()

            view.presentor = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter

            return view
        }

        func pushToDetailsScreen(navigationConroller: UINavigationController) {
        }

        func pushToCreateNewTaskScreen(navigationConroller: UINavigationController) {
        }
    }
}
