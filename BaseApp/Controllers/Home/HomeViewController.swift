//
//  HomeViewController.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import UIKit

class HomeViewController: BaseViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loadingPressed(_ sender: Any) {
        self.showLoading()
    }
    @IBAction func messagePressed(_ sender: Any) {
        self.showMessage(title: "Nam tieu de", message: "Day la noi dung test")
    }
    
    @IBAction func btnActionPressed(_ sender: Any) {
        let actionViewController = ActionViewController()
        
        actionViewController.bindData(title: "Tieu de moi", message: "Noi dung moi")
        actionViewController.actOK = {
            isOK in
            if isOK {
                print("Dong y")
            }else {
                print("Huy")
            }
        }
        
        self.showAction(actionViewController)
    }
    
    @IBAction func alertPressed(_ sender: Any) {
        let alertViewController = AlertViewController()
    
        alertViewController.bindData(status: false)
        self.showAction(alertViewController)
    }
}


