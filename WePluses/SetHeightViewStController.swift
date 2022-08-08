//
//  SetHeightViewStController.swift
//  WePluses
//
//  Created by Роман on 02.08.2022.
//

import Foundation
import UIKit

class SetHeightViewStController: UIViewController {
    
    var backItemImage = UIImage(systemName: "arrow.left")
    
    private lazy var yourHeightText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Bold",
                            size: 24)
        label.text = "What’s your height?"
        return label
    }()
    
    private lazy var segmentedCmFt: UISegmentedControl = {
        let itemsScreenView = ["cm", "ft"]
        let font = UIFont(name: "SFProDisplay-Bold", size: 15)
        let segmentedControl = UISegmentedControl(items: itemsScreenView)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.addTarget(self,
                                   action: #selector(switchScreen),
                                   for: .valueChanged)
        segmentedControl.selectedSegmentTintColor = .black
        segmentedControl.layer.cornerRadius = 20
        segmentedControl.backgroundColor = UIColor(red: 0.97,
                                                   green: 0.977,
                                                   blue: 0.99,
                                                   alpha: 1)
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font!],
                                                for: .normal)
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white],
                                                for: .selected)
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()
    
    private lazy var numberTextFirst: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "SFProDisplay-Bold", size: 70)
        textField.backgroundColor = UIColor(red: 0.97,
                                            green: 0.977,
                                            blue: 0.99,
                                            alpha: 1)
        textField.layer.cornerRadius = 18
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.902,
                                              green: 0.902,
                                              blue: 0.902,
                                              alpha: 1).cgColor
        textField.textAlignment = .center
        textField.tintColor = .black
        textField.addTarget(self,
                            action: #selector(enterOneSymbolTransitionNextTextField),
                            for: .editingChanged)
        textField.delegate = self
        return textField
    }()
    
    private lazy var numberTextSecond: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "SFProDisplay-Bold", size: 70)
        textField.backgroundColor = UIColor(red: 0.97,
                                            green: 0.977,
                                            blue: 0.99,
                                            alpha: 1)
        textField.layer.cornerRadius = 18
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.902,
                                              green: 0.902,
                                              blue: 0.902,
                                              alpha: 1).cgColor
        textField.textAlignment = .center
        textField.tintColor = .black
        textField.addTarget(self,
                            action: #selector(enterOneSymbolTransitionNextTextField),
                            for: .editingChanged)
        textField.delegate = self
        return textField
    }()
    
    private lazy var numberTextThird: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "SFProDisplay-Bold", size: 70)
        textField.backgroundColor = UIColor(red: 0.97,
                                            green: 0.977,
                                            blue: 0.99,
                                            alpha: 1)
        textField.layer.cornerRadius = 18
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.902,
                                              green: 0.902,
                                              blue: 0.902,
                                              alpha: 1).cgColor
        textField.textAlignment = .center
        textField.tintColor = .black
        textField.addTarget(self,
                            action: #selector(enterOneSymbolTransitionNextTextField),
                            for: .editingChanged)
        textField.delegate = self
        return textField
    }()
    
    private lazy var numberTextForFtInFirst: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "SFProDisplay-Bold", size: 70)
        textField.backgroundColor = UIColor(red: 0.97,
                                            green: 0.977,
                                            blue: 0.99,
                                            alpha: 1)
        textField.layer.cornerRadius = 18
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.902,
                                              green: 0.902,
                                              blue: 0.902,
                                              alpha: 1).cgColor
        textField.textAlignment = .center
        textField.tintColor = .black
        textField.addTarget(self,
                            action: #selector(enterOneSymbolTransitionNextTextField),
                            for: .editingChanged)
        textField.delegate = self
        return textField
    }()
    
    private lazy var numberTextForFtInSecond: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "SFProDisplay-Bold", size: 70)
        textField.backgroundColor = UIColor(red: 0.97,
                                            green: 0.977,
                                            blue: 0.99,
                                            alpha: 1)
        textField.layer.cornerRadius = 18
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 0.902,
                                              green: 0.902,
                                              blue: 0.902,
                                              alpha: 1).cgColor
        textField.textAlignment = .center
        textField.tintColor = .black
        textField.addTarget(self,
                            action: #selector(enterOneSymbolTransitionNextTextField),
                            for: .editingChanged)
        textField.delegate = self
        return textField
    }()
    
    private lazy var labelCm: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Bold", size: 17)
        label.text = "cm"
        label.tintColor = .black
        return label
    }()
    
    private lazy var labelFt: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Bold", size: 17)
        label.text = "ft"
        label.tintColor = .black
        return label
    }()
    
    private lazy var labelIn: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Bold", size: 17)
        label.text = "in"
        label.tintColor = .black
        return label
    }()
    
    private lazy var continueButton: UIButton = {
        let button = UIButton(configuration: .plain())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CONTINUE", for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 17)
        button.tintColor = UIColor(red: 1,
                                   green: 1,
                                   blue: 1,
                                   alpha: 1)
        button.backgroundColor = UIColor(red: 1,
                                         green: 0.371,
                                         blue: 0.446,
                                         alpha: 1)
        button.layer.cornerRadius = 18
        button.isHidden = true
        return button
    }()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        switchScreen(segmentedCmFt)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        numberTextFirst.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setKeyboardForTextfield()
        self.title = "Step 2 of 5"
        navigationController?.navigationBar.backIndicatorImage = backItemImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backItemImage
        navigationController?.navigationBar.topItem?.title = ""
    }
}

extension SetHeightViewStController {
    private func configure() {
        view.backgroundColor = UIColor(red: 1,
                                       green: 1,
                                       blue: 1,
                                       alpha: 1)
        
        view.addSubview(yourHeightText)
        view.addSubview(segmentedCmFt)
        
        view.addSubview(numberTextFirst)
        view.addSubview(numberTextSecond)
        view.addSubview(numberTextThird)
        view.addSubview(numberTextForFtInFirst)
        view.addSubview(numberTextForFtInSecond)
        
        view.addSubview(labelCm)
        view.addSubview(labelFt)
        view.addSubview(labelIn)
        
        view.addSubview(continueButton)
        
        NSLayoutConstraint.activate([
            yourHeightText.topAnchor.constraint(equalTo: view.topAnchor, constant: 113),
            yourHeightText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            segmentedCmFt.topAnchor.constraint(equalTo: view.topAnchor, constant: 184),
            segmentedCmFt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 116),
            segmentedCmFt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -113),
            segmentedCmFt.heightAnchor.constraint(equalToConstant: 48),
            segmentedCmFt.widthAnchor.constraint(equalToConstant: 146),
            
            numberTextFirst.topAnchor.constraint(equalTo: segmentedCmFt.bottomAnchor, constant: 64),
            numberTextFirst.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 61),
            numberTextFirst.widthAnchor.constraint(equalToConstant: 70),
            numberTextFirst.heightAnchor.constraint(equalToConstant: 80),
            
            numberTextSecond.topAnchor.constraint(equalTo: segmentedCmFt.bottomAnchor, constant: 64),
            numberTextSecond.leadingAnchor.constraint(equalTo: numberTextFirst.trailingAnchor, constant: 6),
            numberTextSecond.widthAnchor.constraint(equalToConstant: 70),
            numberTextSecond.heightAnchor.constraint(equalToConstant: 80),
            
            numberTextThird.topAnchor.constraint(equalTo: segmentedCmFt.bottomAnchor, constant: 64),
            numberTextThird.leadingAnchor.constraint(equalTo: numberTextSecond.trailingAnchor, constant: 6),
            numberTextThird.widthAnchor.constraint(equalToConstant: 70),
            numberTextThird.heightAnchor.constraint(equalToConstant: 80),
            
            labelCm.topAnchor.constraint(equalTo: segmentedCmFt.bottomAnchor, constant: 128),
            labelCm.leadingAnchor.constraint(equalTo: numberTextThird.trailingAnchor, constant: 6),
            
            continueButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -307),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            continueButton.heightAnchor.constraint(equalToConstant: 52),
            
            numberTextForFtInFirst.topAnchor.constraint(equalTo: view.topAnchor, constant: 295),
            numberTextForFtInFirst.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 84),
            numberTextForFtInFirst.widthAnchor.constraint(equalToConstant: 70),
            numberTextForFtInFirst.heightAnchor.constraint(equalToConstant: 80),
            
            numberTextForFtInSecond.topAnchor.constraint(equalTo: view.topAnchor, constant: 295),
            numberTextForFtInSecond.leadingAnchor.constraint(equalTo: numberTextForFtInFirst.trailingAnchor, constant: 40),
            numberTextForFtInSecond.widthAnchor.constraint(equalToConstant: 70),
            numberTextForFtInSecond.heightAnchor.constraint(equalToConstant: 80),
            
            labelFt.topAnchor.constraint(equalTo: view.topAnchor, constant: 359),
            labelFt.leadingAnchor.constraint(equalTo: numberTextForFtInFirst.trailingAnchor, constant: 10),
            labelFt.heightAnchor.constraint(equalToConstant: 20),
            labelFt.widthAnchor.constraint(equalToConstant: 14),
            
            labelIn.topAnchor.constraint(equalTo: view.topAnchor, constant: 359),
            labelIn.leadingAnchor.constraint(equalTo: numberTextForFtInSecond.trailingAnchor, constant: 12),
            labelIn.heightAnchor.constraint(equalToConstant: 20),
            labelIn.widthAnchor.constraint(equalToConstant: 14),
        ])
    }
    
    private func setKeyboardForTextfield() {
        numberTextFirst.keyboardType = .numberPad
        numberTextSecond.keyboardType = .numberPad
        numberTextThird.keyboardType = .numberPad
        numberTextForFtInFirst.keyboardType = .numberPad
        numberTextForFtInSecond.keyboardType = .numberPad
    }
    
    private func selectTextfieldForBecomeFirstResponder(_ segmentedControl: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            numberTextFirst.becomeFirstResponder()
        } else {
            numberTextForFtInFirst.becomeFirstResponder()
        }
    }
       
    @objc
    func enterOneSymbolTransitionNextTextField (_ textField: UITextField) {
        let inputText = textField.text ?? ""
        if inputText.count <= 1 {
            if segmentedCmFt.selectedSegmentIndex == 0 {
                switch textField {
                case self.numberTextThird:
                    numberTextFirst.becomeFirstResponder()
                case self.numberTextSecond:
                    numberTextThird.becomeFirstResponder()
                case self.numberTextFirst:
                    numberTextSecond.becomeFirstResponder()
                default:
                    break
                }
            } else {
                switch textField {
                case self.numberTextForFtInSecond:
                    numberTextForFtInFirst.becomeFirstResponder()
                case self.numberTextForFtInFirst:
                    numberTextForFtInSecond.becomeFirstResponder()
                default:
                    break
                }
            }
        } else {
            textField.text = ""
        }
    }
    
    @objc
    func switchScreen(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            numberTextForFtInFirst.isHidden = true
            numberTextForFtInSecond.isHidden = true
            labelFt.isHidden = true
            labelIn.isHidden = true
            numberTextFirst.isHidden = false
            numberTextSecond.isHidden = false
            numberTextThird.isHidden = false
            labelCm.isHidden = false
        } else {
            numberTextForFtInFirst.isHidden = false
            numberTextForFtInSecond.isHidden = false
            labelFt.isHidden = false
            labelIn.isHidden = false
            numberTextFirst.isHidden = true
            numberTextSecond.isHidden = true
            numberTextThird.isHidden = true
            labelCm.isHidden = true
        }
    }
}

extension SetHeightViewStController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text, text.isEmpty {
            continueButton.isHidden = true
        } else {
            continueButton.isHidden = false
        }
    }
}
