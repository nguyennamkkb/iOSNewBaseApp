//
//  ActionViewController.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import UIKit

protocol ActionViewControllerCallbackDelegate: AnyObject {
    func actionOK(isOK: Bool)
}

class ActionViewController: UIViewController {
    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbMessage: UILabel!
    @IBOutlet weak var btnAccept: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var vAction: UIView!
    
    weak var delegate: ActionViewControllerCallbackDelegate?
    
    var actOK: ClosureCustom<Bool>?
    var newTitle: String = "Title"
    var newMessage: String = "newNewMessage"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupUI()
        setupData()
    }
    func setupUI(){
        vAction.addCornerRadius()
        btnCancel.addCornerRadius()
        btnAccept.addCornerRadius()
    }
    func setupData(){
        lbTitle.text = newTitle
        lbMessage.text = newMessage
    }
    func bindData(title: String, message: String){
        newMessage = message
        newTitle = title
    }
    @IBAction func cancelPressed(_ sender: Any) {
        delegate?.actionOK(isOK: false)
        actOK?(false)
        close()
    }
    @IBAction func acceptPressed(_ sender: Any) {
        delegate?.actionOK(isOK: true)
        actOK?(true)
        close()
    }
    
    func close(){
        dismiss(animated: false)
    }
}
