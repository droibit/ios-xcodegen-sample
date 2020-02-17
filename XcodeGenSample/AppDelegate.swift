//
//  AppDelegate.swift
//  xcconfig-extractor-project
//
//  Created by Shinya Kumagai on 2/16/20.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import Firebase
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Use Firebase library to configure APIs
        // TODO: Add GoogleService-Info.plist
//        FirebaseApp.configure()
        return true
    }
}

