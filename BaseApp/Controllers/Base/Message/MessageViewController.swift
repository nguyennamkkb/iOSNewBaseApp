//
//  MessageViewController.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var vMessage: UIView!
    @IBOutlet weak var lbMessage: UILabel!
    @IBOutlet weak var lbTitle: UILabel!
    var newTitle: String = "Lời nhắn"
    var newMessage: String = "Noi dung loi nhan"
    override func viewDidLoad() {
        super.viewDidLoad()
        vMessage.addCornerRadius()
        lbTitle.text = newTitle
        lbMessage.text = newMessage
    }

    func bindData(title: String, message: String){
        newTitle = title
        newMessage = message
    }
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: false)
    }
    func close(){
        dismiss(animated: false)
    }

}
