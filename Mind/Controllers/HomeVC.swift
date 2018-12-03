//
//  ViewController.swift
//  Mind
//
//  Created by Adel on 11/28/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet weak var firstView: ANCustomView!
    
    @IBOutlet weak var viewdateApperrance: UIView!
    var connectionString :[String:String] = [:]
    weak var delegate:PizzaDelegate?
    var lgvc = LoginVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         print("my connection string \(connectionString)")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        lgvc.pass(){ (sucess, error, connString) in
            self.connectionString = connString
           
        }
    }
// MARK :- date from  Action
    @IBAction func dateFromPressed(_ sender: Any) {
        viewdateApperrance.isHidden = false
    }
// MARK :- date from  Action
    @IBAction func dateToPressed(_ sender: Any) {
         viewdateApperrance.isHidden = false
    }
    // MARK :- Done Action
    @IBAction func DateSelectedPressed(_ sender: Any) {
        viewdateApperrance.isHidden = true
    }
    // MARK :- search action
    
    @IBAction func btnSearchPressed(_ sender: Any) {
        print("test")
        let parms :[String:Any] = [   "ConnectionString": "/qtBt0CAtOWO0Jk+l+glyJi1T56BKbfxyjfRyB5x0d5L0lGv2wrymieIlPbw903HgY7wFTKfeJi8KCcyPGat8/GSsj+d19TVOTep2LlBqNv/zIDJgSEQ0+5zshoRnSTZN7LMbg7PKuskLc8CvJplR9fbqm9853SewiVwc8Ryazcfdr/l4IuUJ0AICqdXxwq1gUd8FdJ1LbDfYfel6Tgw0uCeN4f3lvogUFG/N3mwryU=",
                                      "From_date": "2018-01-01",
                                      "To_date": "2018-12-01",
                                     // "E_name": null,
                                      "Limit": 5,
                                      "qty": 1
                            ]
        //
        
        OrganizationRequest.getReportsDetails(myParameters: parms){ (success, error, organiztions) in
            
            if success {
                print("Organizations \(organiztions)")
            }
            else{
                print("error \(error)")
            }
    }
    
}

}
