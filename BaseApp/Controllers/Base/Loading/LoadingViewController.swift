//
//  LoadingViewController.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var imageLoading: UIImageView!
    @IBOutlet weak var vLoading: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        vLoading.addCornerRadius()
        imageLoading.image = UIImage.gifImageWithName("icon_loading")
        // Do any additional setup after loading the view.
    }


    func close(){
        dismiss(animated: false)
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
