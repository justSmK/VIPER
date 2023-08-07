//
//  GreetingInteractor.swift
//  VIPER
//
//  Created by Sergei Semko on 8/7/23.
//

import Foundation

protocol GreetingProvider {
    func provideGreetingData()
}

protocol GreetingOutput: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingProvider {
    weak var output: GreetingOutput?
    
    func provideGreetingData() {
        let person = Person(firstName: "Wasin", lastName: "Thonkaew")
        let subject = person.firstName + " " + person.lastName
        let greeting = GreetingData(greeting: "Hello", subject: subject)
        self.output?.receiveGreetingData(greetingData: greeting)
    }
}
