//
//  Contains.swift
//  BaseApp
//
//  Created by Mac mini on 31/05/2024.
//

import Foundation
import UIKit

enum C: Any {
    enum Color {
        static let text = UIColor(hex: "#1EA54C")
        static let button = UIColor(hex: "#FFFFFF")
        static let title = UIColor(hex: "#1E2633")
        static let border = UIColor(hex: "#1E2633")
        static let backgroud = UIColor(hex: "#1E2633")
        
        

    }
    enum Corner {
        static let radiusButton = 10.0
        static let radiusView = 10.0
    }
    
    enum Screen {
        static let WIDTH = UIScreen.main.bounds.width
        static let HEIGHT = UIScreen.main.bounds.height
    }
}
