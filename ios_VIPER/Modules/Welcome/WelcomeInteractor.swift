//
//  WelcomeInteractor.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

final class WelcomeInteractor: WelcomeInteractorProtocol {
    func loadWelcomeMessage(completion: (String) -> Void) {
        completion("VIPER!")
    }
}
