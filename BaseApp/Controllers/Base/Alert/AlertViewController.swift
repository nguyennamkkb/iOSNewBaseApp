//
//  AlertViewController.swift
//  BaseApp
//
//  Created by Mac mini on 01/06/2024.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var lbStatus: UILabel!
    @IBOutlet weak var imageStatus: UIImageView!
    @IBOutlet weak var vAlert: UIView!
    var newStatusString: String = "Success"
    var statusAlert: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        imageStatus.addCornerRadius()
        vAlert.addCornerRadius()
        vAlert.addNDropShadow()
        
        if statusAlert {
            imageStatus.image = UIImage(systemName: "checkmark.circle.fill")
            imageStatus.tintColor = UIColor.green
            lbStatus.text = "Thanh Cong"
            
        }else {
            imageStatus.image = UIImage(systemName: "xmark.circle.fill")
            imageStatus.tintColor = UIColor.red
            lbStatus.text = "That bai"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.dismiss(animated: false)
        }
        
        
    }
    func bindData(status: Bool) {
        statusAlert = status
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
