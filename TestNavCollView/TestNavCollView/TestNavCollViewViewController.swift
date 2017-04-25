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
	
	var myData: [String]?

	@IBOutlet weak var theTextView: UITextView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		// show myData on-screen just so we can see it
		theTextView.text = myData?.joined(separator: "\n")
		
		self.setupNavBarCollectionView()
		
    }

	func setupNavBarCollectionView() {
		
		let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
		layout.itemSize = CGSize(width: CGFloat(40), height: CGFloat(40))
		layout.scrollDirection = .horizontal
		
		// instantiate an instance of our subclassed Collection View
		navCollView = MyNavBarCollectionViewController(collectionViewLayout: layout)
		
		navCollView?.view.frame = CGRect(x: 70, y: 0, width: 500, height: 40)
		
		// set the data in the NavBar Collection View
		if let d = myData {
			navCollView?.theData = d
		}
		
		// add the Collection View to the Nav Bar
		self.navigationItem.titleView = navCollView?.view
		
	}

	@IBAction func btnAddTap(_ sender: Any) {

		// add another "message" to our string array
		if let n = myData?.count {
			myData?.append("Message \(n)")
		} else {
			myData = ["First Message"]
		}

		// show myData on-screen just so we can see it
		theTextView.text = myData?.joined(separator: "\n")
		
		// update the data in the NavBar Collection View
		if let d = myData {
			navCollView?.theData = d
		}

	}
	
	@IBAction func btnRemoveTap(_ sender: Any) {
		
		if let n = myData?.count {
			
			if n > 0 {
			
				// remove the last "message"
				myData?.removeLast()
				
				// show myData on-screen just so we can see it
				theTextView.text = myData?.joined(separator: "\n")
				
				// update the data in the NavBar Collection View
				if let d = myData {
					navCollView?.theData = d
				}
				
			}
			
		}
		
	}
	
	
}
