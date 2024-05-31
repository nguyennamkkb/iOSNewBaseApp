//
//  CommonExtension.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import Foundation
import UIKit

extension UIViewController {

    
//    public var sheetViewController: SheetViewController? {
//        var parent = self.parent
//        while let currentParent = parent {
//            if let sheetViewController = currentParent as? SheetViewController {
//                return sheetViewController
//            } else {
//                parent = currentParent.parent
//            }
//        }
//        return nil
//    }
}
extension String {
    func removeAccents() -> String {
        return self.folding(options: .diacriticInsensitive, locale: nil)
            .replacingOccurrences(of: "đ", with: "d")
            .replacingOccurrences(of: "Đ", with: "D")
    }
    
}
