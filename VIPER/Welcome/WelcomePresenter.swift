//
//  WelcomePresenter.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoaded()
    func didTapImageButton()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}

class WelcomePresenter {
    weak var view: WelcomeViewProtocol?
    var router: WelcomeRouterProtocol
    var interactor: WelcomeInteractorProtocol
    
    init(router: WelcomeRouterProtocol, interactor: WelcomeInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }
}

extension WelcomePresenter: WelcomePresenterProtocol {
    func viewDidLoaded() {
        // start loading info
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didTapImageButton() {
        let temperature = interactor.temperature
        router.openImage(for: temperature)
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date today")
    }
    
    func didLoad(weather: Int?) {
        let temperature = weather?.description ?? "No temperature"
        view?.showWeather(weather: temperature)
    }
    
    
}
