//
//  WelcomePresenter.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import UIKit

final class WelcomePresenter: WelcomePresenterProtocol {
    weak var view: WelcomeViewProtocol?
    var interactor: WelcomeInteractorProtocol
    var router: WelcomeRouterProtocol
    
    init(interactor: WelcomeInteractorProtocol, router: WelcomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        interactor.loadWelcomeMessage { [weak self] message in
            self?.view?.showMessage(message)
        }
    }
    
    func didTapButton() {
        guard let view = view as? UIViewController else { return }
        router.showNextScreen(from: view)
    }
}
