//
//  NetworkManager.swift
//  PortableDetector
//
//  Created by 缪哲文 on 16/1/20.
//  Copyright © 2016年 缪哲文. All rights reserved.
//

import Foundation

///  常用的网络访问方法
public enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
}

class NetworkManager {
    
    private static let instance = NetworkManager()
    /// 定义一个类变量，提供全局的访问入口，类变量不能存储数值，但是可以返回数值
    class var sharedManager: NetworkManager {
        return instance
    }
    
    // 定义了一个类的完成闭包类型
    typealias Completion = (result: AnyObject?, error: NSError?) -> ()
    
    func requestJSON(method: HTTPMethod, _ urlString: String, _ params: [String: String]?, completion: Completion) {
        
        //net.requestJSON(method, urlString, params, completion: completion)
    }
    
    /// 取消全部网络请求
    func cancleAllNetwork() {
        //net.cancleAllNetwork()
    }
    
    ///  全局的一个网络框架实例，本身也只会被实例化一次
    private let net = SimpleNetwork()
}
