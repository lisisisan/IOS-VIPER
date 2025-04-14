//
//  WelcomeRouter.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import UIKit

final class WelcomeRouter: WelcomeRouterProtocol {
    func showNextScreen(from view: UIViewController) {
        let nextVC = NextViewController()  
        view.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    static func createModule() -> UIViewController {
        let view = WelcomeViewController()
        let interactor = WelcomeInteractor()
        let router = WelcomeRouter()
        let presenter = WelcomePresenter(interactor: interactor, router: router)
        
        view.presenter = presenter
        presenter.view = view
        
        return view
    }
}
