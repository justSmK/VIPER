//
//  ModuleBuilder.swift
//  VIPER
//
//  Created by Sergei Semko on 8/7/23.
//

import UIKit.UIViewController


protocol AssemblyModuleBuilderProtocol {
    func createMainModule() -> UIViewController
}

class AssemblyModuleBuilder: AssemblyModuleBuilderProtocol {
    func createMainModule() -> UIViewController {
        let view = GreetingViewController()
        let presenter = GreetingPresenter()
        let interactor = GreetingInteractor()
        view.eventHander = presenter
        presenter.view = view
        presenter.greetingProvider = interactor
        interactor.output = presenter
        
        return view
    }
}
