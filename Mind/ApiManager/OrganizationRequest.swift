//
//  ReportRequest.swift
//  Mind
//
//  Created by Adel on 9/3/18.
//  Copyright © 2018 Mind. All rights reserved.
//

import Foundation
import Alamofire

class OrganizationRequest{

    static var errorMsg:String?
    static var arrOfOrgnizationsModels:[OrginzationModel] = []

    ////////
    class func getReportsDetails (myParameters:Parameters,completion:@escaping(_ success:Bool , _ error:String?,_ :[OrginzationModel])-> Void) {

        let headers = ["Content-Type": "application/json"]
        Alamofire.request(Urls.getSammery, method:.post, parameters: myParameters, encoding: URLEncoding.default,headers:headers).responseJSON { (response) in
            switch response.result {
            case .success:
                print("valueee:\(response.result.value)")
                if let orgs = response.result.value as? [String:Any]{
                    arrOfOrgnizationsModels.removeAll()
                    print("before appending:\(orgs)")
                for org in orgs{

                        //arrOfOrgnizationsModels.append(OrginzationModel(Orginzation_Name: org["Orginzation_Name"] as! String, Time: org["Time"] as! Time, Daily: org["Daily"] as! Daily, Analysis: [org["Analysis"] as! Analysis], Money: org["Money"] as! Money, Daily_Users: [org["Daily_Users"] as! Daily_Users], Balance: org["Balance"] as! Balance, Earns: org["Earns"] as! Earns))
                    }
                    print("after appending: \(arrOfOrgnizationsModels)")
                    completion(true,nil,arrOfOrgnizationsModels)
                    errorMsg = "can't parse json"
                    return
                }

            case .failure (let error) :
                errorMsg = String(describing:error)
                print( errorMsg )
                completion(false,errorMsg,arrOfOrgnizationsModels)
            }
        }
    }
    // End of the class
}



