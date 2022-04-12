//
//  FeedViewController.swift
//  Navigation
//
//  Created by Белозеров Константин on 12.04.2022.
//

import UIKit

class FeedViewController: UIViewController {

    struct Post {
        let title: String
    }
    
    var postTitle = Post(title: "Post title")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray
        self.title = "Home"
        
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Post Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let postViewController = PostViewController()
        postViewController.postTitle = postTitle.title
        self.navigationController?.pushViewController(postViewController, animated: true)
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
