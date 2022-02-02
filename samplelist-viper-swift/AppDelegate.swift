//
//  AppDelegate.swift
//  combine-swiftui
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let home = Module.Home.Router.createModule()

        let navigationController = UINavigationController()
        navigationController.viewControllers = [home]

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
}
