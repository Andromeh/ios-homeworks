//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Белозеров Константин on 12.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeader = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        
        self.view.backgroundColor = .lightGray
        self.view.addSubview(profileHeader)
    }
    
    override func viewWillLayoutSubviews() {
        profileHeader.frame = view.safeAreaLayoutGuide.layoutFrame
        profileHeader.profileLabel.frame = CGRect(
            x: profileHeader.avatarImage.frame.maxX + 16,
            y: 27,
            width: profileHeader.avatarImage.frame.maxX + 16,
            height: 50)
        profileHeader.statusButton.frame = CGRect(
            x: 16,
            y: 216,
            width: self.view.frame.width - 32,
            height: 50)
        profileHeader.statusLabel.frame = CGRect(
            x: profileHeader.avatarImage.frame.maxX + 16,
            y: 90,
            width: self.view.frame.width - 32,
            height: 50)
        profileHeader.textField.frame = CGRect(
            x: profileHeader.avatarImage.frame.maxX + 16,
            y: 150,
            width: profileHeader.statusButton.frame.width - profileHeader.avatarImage.frame.width - 12,
            height: 50)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
