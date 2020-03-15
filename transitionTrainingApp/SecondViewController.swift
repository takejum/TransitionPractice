//
//  SecondViewController.swift
//  transitionTrainingApp
//
//  Created by Jumpei Takeshita on 2020/03/14.
//  Copyright © 2020 Jumpei Takeshita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var count2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text = String(count2)
    }
    
    @IBOutlet weak var label2: UILabel!
    
}
    
    


