//
//  ViewController.swift
//  Mind
//
//  Created by Adel on 11/28/18.
//  Copyright © 2018 Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstView: ANCustomView!
    
    @IBOutlet weak var viewdateApperrance: UIView!
    
    let path = UIBezierPath()
    override func viewDidLoad() {
        super.viewDidLoad()
//        path.addLine(to: CGPoint(x: firstView.frame.size.width, y: firstView.frame.size.height))
//        path.close()
//        firstView.layer.shadowPath = path.cgPath
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
    
}

