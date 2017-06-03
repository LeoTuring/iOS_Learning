//
//  NetWorkManager.swift
//  Traveler
//
//  Created by 李冬阳 on 2017/6/3.
//  Copyright © 2017年 lidongyang. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class NetWorkManager: NSObject {
  
  typealias NetWorkSuccess = (_ responseData: JSON) -> Void
  typealias NetWorkFailure = (_ error: Error) -> Void

  /** common*/
  func request(url: String,
               method: HTTPMethod,
               parameters: Parameters?,
               encoding: ParameterEncoding,
               headers: HTTPHeaders? = nil,
               success: @escaping NetWorkSuccess,
               failure: @escaping NetWorkFailure)
  {
    
    Alamofire.request(url,method: method, parameters: parameters, encoding: encoding,headers: headers).responseJSON { (responseData) in
                        
        switch responseData.result {
        case .success(let value):
          success(JSON(value))
        case .failure(let error):
          failure(error)
        }
    }
    
  }

}

/** GET*/
extension NetWorkManager {
  func get(url:String,
           parameters: Parameters?,
           success: @escaping NetWorkSuccess,
           failure: @escaping NetWorkFailure)
  {
    self.request(url: url, method: .get, parameters: parameters, encoding: URLEncoding.default, success: success, failure: failure)
  }
}
/** POST*/
extension NetWorkManager {
  func post(url: String,
            parameters: Parameters?,
            success: @escaping NetWorkSuccess,
            failure: @escaping NetWorkFailure)
  {
   self.request(url: url, method: .post, parameters: parameters, encoding: URLEncoding.default, success: success, failure: failure)
  }
}

/** PUT*/
extension NetWorkManager {
  func put(url: String,
           parameters: Parameters?,
           success: @escaping NetWorkSuccess,
           failure: @escaping NetWorkFailure)
  {
    self.request(url: url, method: .put, parameters: parameters, encoding: URLEncoding.default, success: success, failure: failure)
  }
  
}
 /** Delete*/
extension NetWorkManager {
  func delete(url: String,
              parameters: Parameters?,
              success: @escaping NetWorkSuccess,
              failure: @escaping NetWorkFailure)
  {
    self.request(url: url, method: .delete, parameters: parameters, encoding: URLEncoding.default, success: success, failure: failure)
  }

}









