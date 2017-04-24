//
//  TestNavCollViewViewController.swift
//  SWTabPlusNavPlusManualPush
//
//  Created by Don Mag on 4/24/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class TestNavCollViewViewController: UIViewController {

	var navCollView: MyNavBarCollectionViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

		self.setupNavBarCollectionView()
		
    }

	func setupNavBarCollectionView() {
		
		let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
		layout.itemSize = CGSize(width: CGFloat(40), height: CGFloat(40))
		layout.scrollDirection = .horizontal
		
		navCollView = MyNavBarCollectionViewController(collectionViewLayout: layout)
		
		navCollView?.view.frame = CGRect(x: 70, y: 0, width: 500, height: 40)
		
		self.navigationItem.titleView = navCollView?.view
		
	}

}
