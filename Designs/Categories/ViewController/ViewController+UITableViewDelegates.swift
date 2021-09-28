//
//  ViewController+UITableViewDelegates.swift
//  Designs
//
//  Created by Ahmad Abdulrady on 27/09/2021.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        Section.allCases.count
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section == 0 {
//            return Section.interests.rawValue
//        } else {
//            return Section.all.rawValue
//        }
//    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return interest.count
        } else {
            return all.count
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UIScreen.main.bounds.height / 10
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerNib = UINib(nibName: "CategoriesTVHeaderCell", bundle: .main)
        tableView.register(headerNib, forCellReuseIdentifier: "CategoryHeader")
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "CategoryHeader") as? CategoriesTVHeaderCell
                if section == 0 {
                    headerCell?.configHeader(with: Section.interests.rawValue, buttonState: false)
                } else {
                    headerCell?.configHeader(with: Section.all.rawValue, buttonState: true)
                }
        return headerCell?.contentView
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellNib = UINib(nibName: "CategoryCell",
                            bundle: .main)
        tableView.register(cellNib,
                           forCellReuseIdentifier: "CategoryCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell",
                                                 for: indexPath) as? CategoryCell
        if indexPath.section == 0 {
            cell?.setTitle(with: interest[indexPath.row].title)
            cell?.setImg(with: interest[indexPath.row].img)
        } else {
            cell?.setTitle(with: all[indexPath.row].title)
            cell?.setImg(with: all[indexPath.row].img)
        }
//        let accessoryIcon = UIImage(asset: Asset.arrowCopy2)
//        let accessory = UIImageView(image: accessoryIcon)
//        accessory.contentMode = .scaleAspectFit
//        accessory.frame = CGRect(x: 0, y: 0, width: 15, height: 15)
//        cell?.accessoryView = accessory
        return cell ?? UITableViewCell()
    }
    
}
