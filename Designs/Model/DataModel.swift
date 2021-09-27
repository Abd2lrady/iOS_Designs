//
//  DataModel.swift
//  Designs
//
//  Created by Ahmad Abdulrady on 27/09/2021.
//

import UIKit

enum Section: String, CaseIterable {
    case interests = "Interests"
    case all = "All"
}

struct DataModel {
    var section: Section?
    var title: String?
    var img: UIImage?
}
