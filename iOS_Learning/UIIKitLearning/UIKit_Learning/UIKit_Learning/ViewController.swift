//
//  ViewController.swift
//  UIKit_Learning
//
//  Created by 李冬阳 on 2017/6/4.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
 
    setUp()
    
  }
  
  /** NSDataAsset*/
  func setUp() {
    let imageView = UIImageView.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
    self.view.addSubview(imageView)
    let dataAsset = NSDataAsset.init(name: "Assets")
    let imageData = dataAsset?.data
    if let imageAssetData = imageData {
      imageView.image = UIImage.init(data: imageAssetData)
    }
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

