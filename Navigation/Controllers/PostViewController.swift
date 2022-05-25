//
//  PostViewController.swift
//  Navigation
//
//  Created by Белозеров Константин on 12.04.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var postTitle = "Anonymous"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = postTitle
        self.view.backgroundColor = .orange
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(showInfo))
        

    }
    
    @objc func showInfo () {
        let infoController = InfoViewController()
        let navController = UINavigationController(rootViewController: infoController)
        self.present(navController, animated: true, completion: nil)
        
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
