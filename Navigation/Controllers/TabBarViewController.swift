//
//  TabBarViewController.swift
//  Navigation
//
//  Created by Белозеров Константин on 12.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.navigationBar.barStyle = .black
        setupVC()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationItem.title = title
        return navController
    }
    
    func setupVC() {
        viewControllers = [
            createNavController(for: feedVC, title: NSLocalizedString("Feed", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
            createNavController(for: profileVC, title: "Profile", image: UIImage(systemName: "person")!)]
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
