//
//  WelcomeContracts.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject {
    func showMessage(_ message: String)
}

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoad()
    func didTapButton()
}

protocol WelcomeInteractorProtocol: AnyObject {
    func loadWelcomeMessage(completion: (String) -> Void)
}

protocol WelcomeRouterProtocol: AnyObject {
    func showNextScreen(from view: UIViewController)
}
