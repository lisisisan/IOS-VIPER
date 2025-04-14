//
//  ios_VIPERApp.swift
//  ios_VIPER
//
//  Created by Ilona on 4/13/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let welcomeVC = WelcomeRouter.createModule()
        let navController = UINavigationController(rootViewController: welcomeVC)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        return true
    }
}
