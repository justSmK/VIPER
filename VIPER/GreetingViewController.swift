//
//  GreetingViewController.swift
//  VIPER
//
//  Created by Sergei Semko on 8/7/23.
//

import UIKit

class GreetingViewController: UIViewController {
    
    var eventHander: GreetingViewEventHander?
    
    var showGreetingButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("Click me", for: .normal)
        button.setTitle("You badass", for: .highlighted)
        
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.red, for: .highlighted)
        
        return button
    }()
    
    var greetingLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(showGreetingButton)
        view.addSubview(greetingLabel)
        
        showGreetingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            showGreetingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showGreetingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greetingLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            greetingLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
    
    @objc
    private func didTapButton(_ sender: UIButton) {
        self.eventHander?.didTapShowGreetingButton()
    }
}

extension GreetingViewController: GreetingView {
    func setGreeting(greeting: String) {
        greetingLabel.text = greeting
    }
}
