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
        
    }
    
}

