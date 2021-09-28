//
//  ViewController.swift
//  desgins
//
//  Created by Ahmad Abdulrady on 27/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var _categoriesTV: UITableView!
    
    var categoriesTV: UITableView {
        get {
            return _categoriesTV
        }
        set {
            _categoriesTV = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Categories"
        setupNavBarAppearance()
        setupCategoriesTV()
    }
    
    func setupNavBarAppearance() {
        navigationController?.navigationBar.prefersLargeTitles = true
        let backBtn = UIBarButtonItem.barButtonItem(with: UIImage(asset: Asset.group1), target: nil, action: nil)
        let searchBtn = UIBarButtonItem.barButtonItem(with: UIImage(asset: Asset.group5), target: nil, action: nil)
        
        navigationItem.leftBarButtonItem = backBtn
        navigationItem.rightBarButtonItem = searchBtn
        
//        let backBtn = UIButton(type: .custom)
//        backBtn.setImage(UIImage(asset: Asset.group1), for: .normal)
//        let backBarItem = UIBarButtonItem(customView: backBtn)
//        navigationItem.leftBarButtonItem = backBarItem
//
//        let searchBtn = UIButton(type: .custom)
//        searchBtn.setImage(UIImage(asset: Asset.group5), for: .normal)
//        let searchBtnBarItem = UIBarButtonItem(customView: searchBtn)
//        navigationItem.rightBarButtonItem = searchBtnBarItem
    }
    
    func setupCategoriesTV() {
        categoriesTV.dataSource = self
        categoriesTV.delegate = self
        categoriesTV.estimatedRowHeight = UIScreen.main.bounds.height / 10
        categoriesTV.rowHeight = UIScreen.main.bounds.height / 10
    }
    
    var interest: [DataModel] = [ DataModel(section: .interests,
                                            title: "Graphics & Design",
                                            img: UIImage(asset: Asset.group9)),
                                  DataModel(section: .interests,
                                            title: "WebDevelopment",
                                            img: UIImage(asset: Asset.group7Copy2)),
                                  DataModel(section: .interests,
                                            title: "Mobile App Development",
                                            img: UIImage(asset: Asset.group8))
                                ]
    var all: [DataModel] = [ DataModel(section: .all,
                                       title: "Video Editing",
                                       img: UIImage(asset: Asset.group10)),
                             DataModel(section: .all,
                                       title: "Photogarphy",
                                       img: UIImage(asset: Asset.group11)),
                             DataModel(section: .all,
                                       title: "3D Modeling",
                                       img: UIImage(asset: Asset.group7)),
                             DataModel(section: .all,
                                       title: "Translation",
                                       img: UIImage(asset: Asset.translate))
                            ]

}
