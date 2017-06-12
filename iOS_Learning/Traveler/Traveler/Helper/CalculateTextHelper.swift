//
//  CalculateTextHelper.swift
//  Traveler
//
//  Created by 李冬阳 on 2017/6/3.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import UIKit

class CalculateTextHelper: NSObject {
  
  enum TextType: String {
    case label = "label"
    case textView = "textView"
  }
  
  static func heightForText(text: String, width: CGFloat, font: UIFont, textType: TextType) -> CGFloat {
    var result: CGFloat = 0
    if 0 < text.characters.count {
      switch textType {
      case .label:
        let textLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: width, height: 999))
        textLabel.font = font
        textLabel.text = text
        textLabel.sizeToFit()
        result = textLabel.frame.size.height
      case .textView:
        let textView = UITextView.init(frame: CGRect.init(x: 0, y: 0, width: width, height: 999))
        textView.font = font
        textView.text = text
        textView.sizeToFit()
        result = textView.frame.size.height
      }
    }
    return result
  }
  
}
