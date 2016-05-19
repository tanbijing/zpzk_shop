//
//  MyNetWork.swift
//  zpzk_shop
//
//  Created by mac on 16/5/12.
//  Copyright © 2016年 Qingke. All rights reserved.
//

import Foundation
import Alamofire
class MyNetWork{
    let requestHost:String
    
    init(host:String){
        requestHost = host
    }
    
    func get(method:Alamofire.Method,requestUrl:String,params:Dictionary<String,AnyObject>?,callBack:(AnyObject)->Void) {
        Alamofire.request(method, requestUrl, parameters: params).responseJSON { respone in
            print(respone.result.value)
            callBack(respone.request!)
        }
    }
}