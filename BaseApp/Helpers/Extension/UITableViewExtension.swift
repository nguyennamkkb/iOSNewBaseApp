//
//  UITableViewExtension.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import Foundation
import UIKit


extension UITableView {
    
    func registerCells(cells: [String], bundle: Bundle? = nil) {
        for cell in cells {
            let cellNib = UINib(nibName: cell, bundle: bundle)
            self.register(cellNib, forCellReuseIdentifier: cell)
        }
    }
    
    func registerCell(nibName: String, bundle: Bundle? = nil) {
        let cellNib = UINib(nibName: nibName, bundle: bundle)
        self.register(cellNib, forCellReuseIdentifier: nibName)
    }
    
 
}


extension UICollectionView {
    // Đăng ký một UICollectionViewCell sử dụng nib
    func register<T: UICollectionViewCell>(nibType: T.Type) {
        let className = String(describing: nibType)
        let nib = UINib(nibName: className, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: className)
    }

    // Đăng ký một mảng UICollectionViewCell sử dụng nib
    func register<T: UICollectionViewCell>(nibTypes: [T.Type]) {
        nibTypes.forEach { nibType in
            let className = String(describing: nibType)
            let nib = UINib(nibName: className, bundle: nil)
            self.register(nib, forCellWithReuseIdentifier: className)
        }
    }
    

}
