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
    
    
    let path = UIBezierPath()
    override func viewDidLoad() {
        super.viewDidLoad()
        path.addLine(to: CGPoint(x: firstView.frame.size.width, y: firstView.frame.size.height))
        path.close()
        firstView.layer.shadowPath = path.cgPath
    }


}

