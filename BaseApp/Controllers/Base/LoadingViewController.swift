//
//  LoadingViewController.swift
//  BaseApp
//
//  Created by Mac mini on 28/05/2024.
//

import UIKit

class LoadingViewController: UIViewController {

    
    var panGestureRecognizer: UIPanGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Thêm UIPanGestureRecognizer
        panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        view.addGestureRecognizer(panGestureRecognizer)
    }
    @objc func handlePanGesture(_ gesture: UIPanGestureRecognizer) {
          let translation = gesture.translation(in: view)
          let velocity = gesture.velocity(in: view)

          switch gesture.state {
          case .changed:
              if translation.y < 0 { // Chỉ cho phép vuốt lên
                  view.frame.origin.y = translation.y
              }
          case .ended:
              if velocity.y < 0 { // Vuốt lên
                  UIView.animate(withDuration: 0.3, animations: {
                      self.view.frame.origin.y = -self.view.frame.height
                  }, completion: { _ in
                      self.dismiss(animated: false, completion: nil)
                  })
              } else { // Vuốt không đủ nhanh, trở về vị trí ban đầu
                  UIView.animate(withDuration: 0.3) {
                      self.view.frame.origin.y = 0
                  }
              }
          default:
              break
          }
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
