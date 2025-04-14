//
//  SceneDelegate.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let welcomeVC = WelcomeRouter.createModule()
        let navController = UINavigationController(rootViewController: welcomeVC)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}
