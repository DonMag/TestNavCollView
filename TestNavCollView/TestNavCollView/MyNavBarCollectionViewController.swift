//
//  MyNavBarCollectionViewController.swift
//  SWTabPlusNavPlusManualPush
//
//  Created by Don Mag on 4/24/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyNavBarCollectionViewController: UICollectionViewController {
	
//	var theData: [String]?
	
	var theData: [String] = [] {
		didSet {
			self.collectionView?.reloadData()
		}
	}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

		self.collectionView?.backgroundColor = .clear
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return theData.count 
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
		cell.backgroundColor = UIColor.blue
		
        return cell
    }

}
