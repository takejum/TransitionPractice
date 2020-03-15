//
//  ViewController.swift
//  transitionTrainingApp
//
//  Created by Jumpei Takeshita on 2020/03/14.
//  Copyright © 2020 Jumpei Takeshita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButton(_ sender: Any) {
        
        count += 1
        
        numberLabel.text = String(count)
        
        if count == 10{
            count = 0
//            performSegue(withIdentifier: "Next", sender: nil)
            
            
            //defining secondVC variable will be used in the code which will go to next view.
            let secondVC =
                storyboard?.instantiateViewController(identifier: "Next") as! SecondViewController
            
            //putting the value of count in count2 in the SecondViewController
            secondVC.count2 = count
            
            //going to next view using navigation controller
            navigationController?.pushViewController(secondVC, animated: true)
            
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let secondVC = segue.destination as! SecondViewController
    
    
//        secondVC.count2 = count
    }
