//
//  BoySettingCollectionViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/22.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class BoySettingCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageArray = [UIImage(named: "mario1"), UIImage(named: "mario2"), UIImage(named: "mario3")]
    
    var imageLabels = ["mario1","mario2", "mario3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! BoySettingCollectionViewCell
       
        cell.imageView.image = self.imageArray[indexPath.row]
        cell.imageLabel.text = self.imageLabels[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.imageArray.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let cell = collectionView.cellForItemAtIndexPath(indexPath) as! BoySettingCollectionViewCell
        cell.imageView.image = UIImage(named: "mario2")
        
        print("this is index path", (indexPath.row))
//        let dismissController: UIViewController = self.presentingViewController!
//        
//        dismissController.dismissViewControllerAnimated(true) { () -> Void in
//            print("this dismiss workd")
//        }
        

    }

}
