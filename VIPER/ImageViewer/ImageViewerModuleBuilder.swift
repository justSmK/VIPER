//
//  ImageViewerModuleBuilder.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation
import UIKit

class ImageViewerModuleBuilder {
    static func build(temperature: Int) -> ImageViewerViewController {
        let interactor = ImageViewerInteractor(temperature: temperature)
        let router = ImageViewerRouter()
        let presenter = ImageViewerPresenter(router: router, interactor: interactor)
//        let presenter = ImageViewerPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "ImageViewer", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ImageViewer") as! ImageViewerViewController
        presenter.view = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
