//
//  ChooseGenderViewController .swift
//  WePluses
//
//  Created by Роман on 31.07.2022.
//

import Foundation
import UIKit

class ChooseGenderViewController: UIViewController {
    
    var backItemImage = UIImage(named: "arrow.left")
    
    private lazy var genderText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Bold",
                            size: 24)
        label.text = "What’s your gender?"
        return label
    }()
    
    private lazy var buttonMale: UIButton = {
        let button = UIButton(configuration: .plain())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.97,
                                         green: 0.977,
                                         blue: 0.99,
                                         alpha: 1)
        button.addTarget(self,
                         action: #selector(changeColorButton),
                         for: .touchUpInside)
        button.setTitle("Male", for: .normal)
        button.layer.cornerRadius = 18
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.902,
                                           green: 0.902,
                                           blue: 0.902,
                                           alpha: 1).cgColor
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Medium",
                                         size: 17)
        button.configuration?.contentInsets = .init(top: 24,
                                                    leading: 16,
                                                    bottom: 24,
                                                    trailing: 290)
        return button
    }()
    
    private lazy var buttonMaleEmoji: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🙋‍♂️"
        return label
    }()
    
    private lazy var buttonFemale: UIButton = {
        let button = UIButton(configuration: .plain())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.97,
                                         green: 0.977,
                                         blue: 0.99,
                                         alpha: 1)
        button.addTarget(self,
                         action: #selector(changeColorButton),
                         for: .touchUpInside)
        button.setTitle("Female", for: .normal)
        button.layer.cornerRadius = 18
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.902,
                                           green: 0.902,
                                           blue: 0.902,
                                           alpha: 1).cgColor
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Medium",
                                         size: 17)
        button.configuration?.contentInsets = .init(top: 24,
                                                    leading: 16,
                                                    bottom: 24,
                                                    trailing: 270)
        return button
    }()
    
    private lazy var buttonFemaleEmoji: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🙋‍♀️"
        return label
    }()
    
    private lazy var buttonNonBinary: UIButton = {
        let button = UIButton(configuration: .plain())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.97,
                                         green: 0.977,
                                         blue: 0.99,
                                         alpha: 1)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Non-binary", for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Medium",
                                         size: 17)
        button.titleLabel?.numberOfLines = 1
        button.layer.cornerRadius = 18
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.902,
                                           green: 0.902,
                                           blue: 0.902,
                                           alpha: 1).cgColor
        button.configuration?.contentInsets = .init(top: 24,
                                                    leading: 16,
                                                    bottom: 24,
                                                    trailing: 240)
        button.addTarget(self,
                         action: #selector(changeColorButton),
                         for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonNonBinaryEmoji: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "😊"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        self.title = "Step 1 of 5"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.navigationBar.backIndicatorImage = self.backItemImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = self.backItemImage
        self.navigationController?.navigationBar.tintColor = UIColor(red: 0.345, green: 0.351, blue: 0.371, alpha: 1)
    }
}


extension ChooseGenderViewController {
    private func configure() {
        view.backgroundColor = UIColor(red: 1,
                                       green: 1,
                                       blue: 1,
                                       alpha: 1)
        view.addSubview(genderText)
        
        view.addSubview(buttonMale)
        view.addSubview(buttonMaleEmoji)
        
        view.addSubview(buttonFemale)
        view.addSubview(buttonFemaleEmoji)
        
        view.addSubview(buttonNonBinary)
        view.addSubview(buttonNonBinaryEmoji)
        
        NSLayoutConstraint.activate([
            genderText.topAnchor.constraint(equalTo: view.topAnchor, constant: 113),
            genderText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            buttonMale.topAnchor.constraint(equalTo: view.topAnchor, constant: 231),
            buttonMale.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonMale.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonMale.heightAnchor.constraint(equalToConstant: 68),
            
            
            buttonMaleEmoji.trailingAnchor.constraint(equalTo: buttonMale.trailingAnchor, constant: -16),
            buttonMaleEmoji.topAnchor.constraint(equalTo: buttonMale.topAnchor, constant: 25.5),
            
            
            buttonFemale.topAnchor.constraint(equalTo: view.topAnchor, constant: 311),
            buttonFemale.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonFemale.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonFemale.heightAnchor.constraint(equalToConstant: 68),
            
            buttonFemaleEmoji.trailingAnchor.constraint(equalTo: buttonFemale.trailingAnchor, constant: -16),
            buttonFemaleEmoji.topAnchor.constraint(equalTo: buttonFemale.topAnchor, constant: 25.5),
            
            buttonNonBinary.topAnchor.constraint(equalTo: view.topAnchor, constant: 391),
            buttonNonBinary.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            buttonNonBinary.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            buttonNonBinary.heightAnchor.constraint(equalToConstant: 68),
            
            buttonNonBinaryEmoji.trailingAnchor.constraint(equalTo: buttonNonBinary.trailingAnchor, constant: -16),
            buttonNonBinaryEmoji.topAnchor.constraint(equalTo: buttonNonBinary.topAnchor, constant: 25.5),
        ])
    }
    
    @objc
    private func changeColorButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sender.tintColor = .clear
        
        if sender.isSelected {
            sender.backgroundColor = UIColor(red: 1,
                                             green: 0.371,
                                             blue: 0.446,
                                             alpha: 1)
            sender.setTitleColor(.white, for: .selected)
        } else {
            sender.backgroundColor = UIColor(red: 0.97,
                                             green: 0.977,
                                             blue: 0.99,
                                             alpha: 1)
            sender.setTitleColor(.black, for: .selected)
        }
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(SetHeightViewStController(), animated: true)
        }
        
    }
}
