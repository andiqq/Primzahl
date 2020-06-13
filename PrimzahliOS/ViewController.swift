//
//  ViewController.swift
//  PrimzahliOS
//
//  Created by Dr. Andreas Plagens on 28.04.20.
//  Copyright © 2020 Dr. Andreas Plagens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Start(_ sender: UIButton) {
        
        Duration.text = prim()
    }
    
    @IBOutlet weak var Duration: UILabel!
    
}

