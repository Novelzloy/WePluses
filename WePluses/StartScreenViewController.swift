//
//  StartScreenViewController.swift
//  WePluses
//
//  Created by Роман on 30.07.2022.
//

import Foundation
import UIKit

class StartScreenViewController: UIViewController {
    
    private lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "icon 513 1")
        return imageView
    }()
    
    let chooseGenderViewController = ChooseGenderViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        transitionToNextScreen(chooseGenderViewController)
    }
}

extension StartScreenViewController {
    private func configure() {
        view.backgroundColor = UIColor(red: 1,
                                       green: 1,
                                       blue: 1,
                                       alpha: 1)
        
        view.addSubview(image)
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 108),
            image.widthAnchor.constraint(equalToConstant: 108)
        ])
    }
    
    private func transitionToNextScreen(_ chooseGenderViewController: UIViewController) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.navigationController?.pushViewController(chooseGenderViewController, animated: true)
        }
    }
}

