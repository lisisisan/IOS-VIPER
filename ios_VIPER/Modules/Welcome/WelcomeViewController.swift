//
//  WelcomeViewController.swift
//  ios_VIPER
//
//  Created by Ilona on 4/14/25.
//

import UIKit

final class WelcomeViewController: UIViewController {
    var presenter: WelcomePresenterProtocol?
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Показать приветствие", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
        presenter?.viewDidLoad()
    }
    
    private func setupUI() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func didTapButton() {
        presenter?.didTapButton()
    }
}

extension WelcomeViewController: WelcomeViewProtocol {
    func showMessage(_ message: String) {
        let alert = UIAlertController(title: "Приветствие", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
