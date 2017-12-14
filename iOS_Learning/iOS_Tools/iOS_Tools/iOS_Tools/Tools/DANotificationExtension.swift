//
//  DANotificationExtension.swift
//  iOS_Tools
//
//  Created by 李冬阳 on 2017/12/14.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import Foundation

/** add Custom Notification Name */
enum DANotification: String {
  case userLogin 
  
  // add Notification Special Prefix
  var stringValue: String {
    return "DA" + rawValue
  }
  
  var notificationName: NSNotification.Name {
    return NSNotification.Name(stringValue)
  }
}


extension NotificationCenter {
  /** add Observe Notification*/
  static func add(observe targer: Any, selector: Selector, name: DANotification, object: Any? = nil) {
    NotificationCenter.default.addObserver(targer, selector: selector, name: name.notificationName, object: object)
  }
  
  /** Post Custom Notification */
  static func post(customNotification name: DANotification, object: Any? = nil, userInfo: [AnyHashable: Any]? = nil) {
    NotificationCenter.default.post(name: name.notificationName, object: object, userInfo: userInfo)
  }
  

  
}
