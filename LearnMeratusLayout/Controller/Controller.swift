//
//  Controller.swift
//  LearnMeratusLayout
//
//  Created by herlangga wibi on 05/12/19.
//  Copyright © 2019 herlangga wibi. All rights reserved.
//

import Foundation
import Alamofire

class Controller {
    
    let encoder = JSONEncoder()
    
    var dataResult = [String]()
    
    var getData: String? {
        didSet {
            dataResult.append(getData!)
            success?()
        }
    }
    
    var success: (() -> ())?
    
    func requestDashboardFinance(type: String) {
        
        let url = "http://api.meratusline.com:8888/RemoteAPIGetDashboardEcommerces.ashx"
        
        
        
        let parameter = [
            "CNT":"",
            "KATEGORI":"",
            "NOMOR":"",
            "TAHUN":"2019",
            "TIPE": type,
            "TOKEN":"CcjRbeiSm8kA8loKMlR8tRIAmPcbFQBRdMn54FqYAUHsuy3Oo1"
        ]
        
        
        let data = try! encoder.encode([parameter])
        
        
        var urlRequest = URLRequest(url: URL(string: url)!)
        urlRequest.httpBody = data
        urlRequest.httpMethod = HTTPMethod.post.rawValue
        
        
        Alamofire.request(urlRequest).responseString { (response) in
            self.getData = response.result.value
            //print(response.result.value)
            
        }
        
    }
    
    
}
