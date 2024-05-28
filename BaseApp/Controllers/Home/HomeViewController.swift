//
//  HomeViewController.swift
//  BaseApp
//
//  Created by Mac mini on 28/05/2024.
//

import UIKit

class HomeViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hi")
        // Do any additional setup after loading the view.
    }
    @IBAction func loadingPressed(_ sender: Any) {
        let vc = LoadingViewController()
        
        self.presentViewControllerWithTransitionDown(vc, from: self)
        
//        // Present the view controller
//        let newViewController = LoadingViewController() // Thay YourViewController bằng view controller của bạn
//        newViewController.modalPresentationStyle = .overFullScreen
//        self.present(newViewController, animated: true, completion: nil)
    }
    
}
