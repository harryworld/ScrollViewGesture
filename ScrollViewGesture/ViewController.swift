//
//  ViewController.swift
//  ScrollViewGesture
//
//  Created by Harry Ng on 31/7/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var scrollView: MyScrollView!

    var pan: NSPanGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pan = NSPanGestureRecognizer(target: self, action: #selector(MyScrollView.panned(_:)))
        view.addGestureRecognizer(pan)
    }

    func panned(pan: NSPanGestureRecognizer) {
        Swift.print("move")
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {

    func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem {

        return collectionView.makeItemWithIdentifier("MyItem", forIndexPath: indexPath)
    }
}
