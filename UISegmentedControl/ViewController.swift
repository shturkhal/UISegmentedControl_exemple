//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Іван Штурхаль on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {

    var segmentControl = UISegmentedControl()
    
    var imageView = UIImageView()
    let imageArray = [UIImage(named: "printer.png"),
                      UIImage(named: "documents.png"),
                      UIImage(named: "folder.png")]
    
    var menuArray = ["one", "two", "three"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /// create image
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(self.imageView)
       /// create segment
        self.segmentControl = UISegmentedControl(items: self.menuArray)
        self.segmentControl.frame = CGRect(x: 90, y: 500, width: 200, height: 30)
        self.view.addSubview(self.segmentControl)
        
        self.segmentControl.addTarget(self, action: #selector(segmentedValue(target:)), for: .valueChanged)
        
    }

    @objc func segmentedValue(target: UISegmentedControl) {
        if target == self.segmentControl {
            let segmentedIndex = target.selectedSegmentIndex
            self.imageView.image = self.imageArray[segmentedIndex]
        }
    }
}

