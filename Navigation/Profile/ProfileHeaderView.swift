//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Белозеров Константин on 12.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var profileLabel: UILabel!
    var avatarImage: UIImageView!
    var statusLabel: UILabel!
    var textField: UITextField!
    var statusButton: UIButton!
    
    private var statusText: String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        avatarImage = getAvatarImage()
        profileLabel = getProfileLabel()
        statusLabel = getStatusLabel()
        textField = getTextField()
        statusButton = getStatusButton()
        
        self.addSubview(profileLabel)
        self.addSubview(statusLabel)
        self.addSubview(avatarImage)
        self.addSubview(textField)
        self.addSubview(statusButton)
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getProfileLabel() -> UILabel {
        let label = UILabel(frame: CGRect(x: avatarImage.frame.maxX + 16, y: 27, width: avatarImage.frame.maxX + 16, height: 50))
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        label.text = "Konstantin"
        return label
    }
    
    func getAvatarImage() -> UIImageView {
        let image = UIImage(named: "maxresdefault.jpg")!
        let myImage = UIImageView(frame: CGRect(x: 12, y: 16, width: 150, height: 150))
        myImage.image = image
        myImage.layer.masksToBounds = true
        myImage.layer.cornerRadius = 75
        myImage.layer.borderWidth = 3
        return myImage
    }
    
    func getTextField() -> UITextField {
        let textField = UITextField(frame: CGRect(x: avatarImage.frame.maxX + 16, y: 150, width: 100, height: 100))
        textField.text = "Waiting for something..."
        textField.backgroundColor = .white
        textField.font = UIFont(name: "HelveticaNeue-Regular", size: 15)
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        
        textField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        
        return textField
    }
    
    func getStatusLabel() -> UILabel {
        let label = UILabel(frame: CGRect(x: avatarImage.frame.maxX + 16, y: 90, width: 100, height: 50))
        label.text = "..."
        
        return label
    }
    
    func getStatusButton() -> UIButton {
        let button = UIButton(frame: CGRect(x: 16, y: 216, width: 150, height: 50))
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.layer.shadowOffset = .init(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }
    
    @objc func buttonPressed() {
        print(textField.text ?? "")
        statusLabel.text = statusText
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text
    }
    

}
