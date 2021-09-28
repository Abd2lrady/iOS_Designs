//
//  CategoriesTVHeaderCell.swift
//  Designs
//
//  Created by Ahmad Abdulrady on 28/09/2021.
//

import UIKit

class CategoriesTVHeaderCell: UITableViewCell {

    @IBOutlet private weak var title: UILabel!
    @IBOutlet private weak var addNewBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        addNewBtn.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configHeader(with title: String?, buttonState addNewIsHidden: Bool) {
        self.title.text = title
        addNewBtn.isHidden = addNewIsHidden
    }
}
