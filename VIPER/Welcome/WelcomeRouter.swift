//
//  WelcomeRouter.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}


class WelcomeRouter: WelcomeRouterProtocol {
    weak var viewController: ViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true)
    }
}
