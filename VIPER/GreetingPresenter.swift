//
//  GreetingPresenter.swift
//  VIPER
//
//  Created by Sergei Semko on 8/7/23.
//

import Foundation

protocol GreetingViewEventHander {
    func didTapShowGreetingButton()
}

protocol GreetingView: AnyObject {
    func setGreeting(greeting: String)
}

class GreetingPresenter: GreetingOutput, GreetingViewEventHander {
    weak var view: GreetingView?
    var greetingProvider: GreetingProvider?
    
    func didTapShowGreetingButton() {
        self.greetingProvider?.provideGreetingData()
    }
    
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = greetingData.greeting + " " + greetingData.subject
        self.view?.setGreeting(greeting: greeting)
    }
}
