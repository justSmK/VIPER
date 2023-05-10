//
//  ImageViewerInteractor.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation
import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemperature() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    weak var presenter: ImageViewerPresenterProtocol?
    
    let temperature: Int
    
    init(temperature: Int) {
        self.temperature = temperature
    }
    
    func getImageForCurrentTemperature() -> UIImage? {
        if temperature < 0 {
            return UIImage(systemName: "snowflake")
        } else if 0..<10 ~= temperature {
            return UIImage(systemName: "cloud.fill")
        } else {
            return UIImage(systemName: "sun.min.fill")
        }
    }
}
