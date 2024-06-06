//
//  ViewController.swift
//  IOS_Animation_App
//
//  Created by Sudipta Chowdhury on 6/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var birdImages: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createImageArray()
    }
    
    private func createImageArray() {
        for count in 1...5 {
            let imageName = "bird\(count).png"
            let image = UIImage(named: imageName)!
            birdImages.append(image)
        }
    }

    @IBAction func startButtonTapped(_ sender: Any) {
        imageView.animationImages = birdImages
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 4
        imageView.startAnimating()
    }
}

