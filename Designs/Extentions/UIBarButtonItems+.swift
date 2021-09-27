//
//  UIBarButtonItems+.swift
//  Designs
//
//  Created by Ahmad Abdulrady on 27/09/2021.
//

import UIKit

extension UIBarButtonItem {
    static func barButtonItem(with img: UIImage?,
                              target: AnyObject?,
                              action: Selector?) -> UIBarButtonItem {
        let btn = UIButton(type: .custom)
        btn.setImage(img, for: .normal)
        let item = UIBarButtonItem(customView: btn)
        return item
    }
}
