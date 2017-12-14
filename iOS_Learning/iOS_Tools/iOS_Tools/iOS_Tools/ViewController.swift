//
//  ViewController.swift
//  iOS_Tools
//
//  Created by 李冬阳 on 2017/12/14.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     Custom Notification  addObserve/ post 
     NotificationCenter.add(observe: self, selector: #selector(notification), name: .userLogin)
     
     Thread.sleep(forTimeInterval: 10)
     
     NotificationCenter.post(customNotification: .userLogin)
     */
    
    
    
  }

  @objc func notification() {
    print("notification is post success")
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  /**
   工具类
   
   1. 通知管理
   2. 颜色管理
   3. 字体管理
   4. log输出 (事件)
   5. 动画管理
   6. 异常处理
   7. 数据库管理
   8. 缓存处理
   9. 更换主题
   10. 线程管理
   */
  

}

