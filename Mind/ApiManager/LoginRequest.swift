//
//  urlRequest.swift
//  Mind
//
//  Created by Mariam on 8/26/18.
//  Copyright © 2018 Mind. All rights reserved.
//

import Foundation

import Alamofire


class LoginRequest{
    
    
    static var errorMsg:String?
    static var connectioString:[String:String] = [:]
    
    static func login(phone : String , password : String ,completion:@escaping(_ success:Bool , _ error:String?,_ connString:[String:String])-> Void){
        let LOGINUrl:String = "http://mindit-001-site2.atempurl.com/api/Login/Get_User?phone=\(phone)&pass=\(password)"
        
        Alamofire.request(LOGINUrl, method: .get, encoding: URLEncoding.default).responseJSON { (response) in
            
            
            switch response.result{
            case .success:
                
                if let token = response.result.value as? [String:String]
                {
                print("sucessss\(token)")
                completion(true,nil,token)
                }
            case .failure (let error) :
                
                print("Error in json is : \(response.result.error)")
                errorMsg = String(describing:error)
                completion(false,nil,connectioString)
                print( errorMsg )
            }
        }
        // end of method
    }
  // End of the class
}


