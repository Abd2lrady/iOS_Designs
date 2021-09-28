//
//  CALayer+.swift
//  Designs
//
//  Created by Ahmad Abdulrady on 27/09/2021.
//

import UIKit

extension UIView {
    var setAllRoundedCorners: CGFloat {
        get {
            return 0
        }
        set (radius) {
            self.layer.cornerRadius = radius
        }
    }
}
