//
//  ImageViewerViewController.swift
//  VIPER
//
//  Created by Sergei Semko on 5/10/23.
//

import Foundation
import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var presenter: ImageViewerPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
        initialize()
    }
    
    
}

private extension ImageViewerViewController {
    func initialize() {
        
    }
}

extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
    
    
}
