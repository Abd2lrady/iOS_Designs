//
//  CategoryCell.swift
//  Designs
//
//  Created by Ahmad Abdulrady on 27/09/2021.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet private weak var backColor: UIView!
    @IBOutlet private weak var img: UIImageView!
    @IBOutlet private weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        backColor.setAllRoundedCorners = UIScreen.main.bounds.height / 50
    }
    
    func setImg(with img: UIImage?) {
        self.img.image = img
    }
    
    func setTitle(with title: String?) {
        self.title.text = title
    }
    
}
