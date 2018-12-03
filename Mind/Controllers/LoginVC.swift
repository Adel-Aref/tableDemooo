//
//  LoginVC.swift
//  Mind
//
//  Created by Adel on 12/1/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class LoginVC: UIViewController ,PizzaDelegate{

    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    var connString:[String:String] = [:]
    weak var delegate:PizzaDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLoginPressed(_ sender: Any) {
//        if txtPass.text != nil && txtPass.text != "" && txtPhoneNumber.text != nil && txtPhoneNumber.text != ""{
//            LoginRequest.login(phone: txtPhoneNumber.text!, password: txtPass.text!){ (sucess, error, connectioString) in
//                if sucess{
//
//                    self.connString = connectioString
//                    print("Counnnnn \(self.connString)")
//
//                    let myVC = self.storyboard?.instantiateViewController(withIdentifier: "toHomeVC") as! HomeVC
//                    myVC.connectionString = connectioString
//                    self.present(myVC, animated: true, completion: nil)
//
//
//                }
//                else{
//                    print("error happened \(error)")
//                }
//
//            }
//        }
        let myVC = self.storyboard?.instantiateViewController(withIdentifier: "toHomeVC") as! HomeVC
        self.present(myVC, animated: true, completion: nil)
       // End of action
    }
     public func pass(completion:@escaping(_ success:Bool , _ error:String?,_ connString:[String:String])-> Void){
        completion(true,nil,self.connString)
    }
    // override prepare sigue

}
///
protocol PizzaDelegate:class
{
    func onPizzaReady(type: String)
}
extension LoginVC{
    func onPizzaReady(type: String) {
        print("Pizza ready. The best pizza of all pizzas is... \(type)")
        
//        let vc = HomeVC()
//        vc.delegate = self
//        vc.connectionString = self.connString
//
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "toHomeVC")
//        self.present(controller, animated: true, completion: nil)
        
    }
}
