//
//  AppDelegate.swift
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let window = UIWindow()
        window.rootViewController = UIViewController(nibName: nil, bundle: nil)
        window.makeKeyAndVisible()
        self.window = window

        return true
    }
}
