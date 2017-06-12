//
//  LocalizedRemoteConfig.swift
//  Traveler
//
//  Created by 李冬阳 on 2017/6/3.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import UIKit

class LocalizedRemoteConfig: NSObject {
  
  static let  shareInstance = LocalizedRemoteConfig()
  private var languageDictionary: NSMutableDictionary = NSMutableDictionary()
  override init() {
    super.init()
  }
  
   func setUp() {
    self.loadLanguagePlist()
  }
  
  private func languageCode() -> String {
    var languageCode: String = ""
    if let languageID = Locale.preferredLanguages.first {
      if #available(iOS 9.0, *) {
        if let region = languageID.components(separatedBy: "-").last {
            languageCode = languageID.replacingOccurrences(of: "-\(region)", with: "")
        }else {
          languageCode = languageID
        }
      }else {
        languageCode = languageID
      }
    }
    return languageCode
  }
  
  
  private func loadLanguagePlist() {
    let languageCode = self.languageCode()
    let path = Bundle.main.path(forResource: "LocalizableStrings-\(languageCode)", ofType: "plist")
    if let languagePath = path {
      let dic = NSMutableDictionary.init(contentsOfFile: languagePath)
      if let languageDic = dic {
        self.languageDictionary = languageDic
      }
    }
  }
  
  static func localize(forkey key: String) -> String {
    let value = self.shareInstance.languageDictionary[key] as? String
    if let languageVaule = value {
      return languageVaule
    }
    return ""
  }
}























