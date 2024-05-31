//
//  BaseViewController.swift
//  BaseApp
//
//  Created by Mac mini on 28/05/2024.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, UINavigationControllerDelegate {
    
    let activityScreen = LoadingViewController()
    let messageViewController = MessageViewController()
    var animation: Bool = true
    var statusBarType: UIStatusBarStyle = UIStatusBarStyle.default{
        didSet{
            setNeedsStatusBarAppearanceUpdate()
            self.navigationController?.navigationBar.barStyle = .default
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //        addBackButton()
        statusBarType = .lightContent
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
        self.navigationItem.setHidesBackButton(true, animated: true)
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        activityScreen.modalPresentationStyle = .overCurrentContext
        activityScreen.modalTransitionStyle = .crossDissolve        
        
        messageViewController.modalPresentationStyle = .overCurrentContext
        messageViewController.modalTransitionStyle = .crossDissolve
    
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    func dismissVC(animated: Bool = true) {
        let vc = self.navigationController?.popViewController(animated: animated)
        
        if vc == nil {
            dismiss(animated: animated, completion: nil)
        }
    }
    func onBackNavigator() {
        let vc = self.navigationController?.popViewController(animated: animation)
        if vc == nil{
            dismiss(animated: animation, completion: nil)
        }
    }
    func pushVC(controller vc: UIViewController, hidesBottomBarWhenPushed hidesBottomBar: Bool = false, animation anima: Bool = true) {
        vc.hidesBottomBarWhenPushed = hidesBottomBar
        self.navigationController?.pushViewController(vc, animated: anima)
    }
    func swapRootViewController(vc: UIViewController){
        guard let window = self.view.window else {return}
        window.switchRootViewController(vc,animated: true)
    }
    
    //    func showLoading(){
    //        present(activityScreen, animated: false, completion: nil)
    //    }
    
    func presentViewControllerWithTransitionDown(_ viewController: UIViewController, from presentingViewController: UIViewController) {
        // Đặt vị trí ban đầu của view controller mới ở trên cùng của màn hình
        viewController.view.frame = CGRect(x: 0, y: -presentingViewController.view.frame.height, width: presentingViewController.view.frame.width, height: presentingViewController.view.frame.height)
        viewController.modalPresentationStyle = .overFullScreen
        // Thêm view của view controller mới vào view hiện tại
        presentingViewController.view.addSubview(viewController.view)

        UIView.animate(withDuration: 0.5, animations: {
            viewController.view.frame = presentingViewController.view.frame
        }, completion: { completed in
            presentingViewController.present(viewController, animated: false, completion: nil)
        })
    }
    
    

    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
#if DEBUG
        print("ScreenName: \(String(describing: type(of: self)))")
#endif
        
        
    }
    
    // loading
    func showLoading(){
        print("showLoading")
        present(activityScreen, animated: false, completion: nil)
    }
    func hideLoading(){
        activityScreen.close()
    }
    
    
    // message
    func showMessage(title: String, message: String){
        print("showMessage")
        messageViewController.bindData(title: title, message: message)
        present(messageViewController, animated: false)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.messageViewController.close()
        }
    }
    
    func showAction(_ viewController: UIViewController) {
        viewController.modalPresentationStyle = .overCurrentContext
        viewController.modalTransitionStyle = .crossDissolve
        present(viewController, animated: false)
    }
    
    
}


extension BaseViewController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if let count = self.navigationController?.viewControllers.count, count > 1 {
            return true
        }
        return false
    }
}
