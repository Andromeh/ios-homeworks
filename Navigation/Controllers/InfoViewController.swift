//
//  InfoViewController.swift
//  Navigation
//
//  Created by Белозеров Константин on 12.04.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBlue


        let button = UIButton(frame: CGRect(x: 0, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Alert button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
        // Do any additional setup after loading the view.
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let alertController = UIAlertController(title: "Alert messege", message: "Messege", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { UIAlertAction in NSLog("Cancel pressed")}
        let confirmAction = UIAlertAction(title: "OK", style: .default) { UIAlertAction in NSLog("OK pressed")}
        alertController.addAction(cancelAction)
        alertController.addAction(confirmAction)
        present(alertController, animated: true, completion: nil)
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
