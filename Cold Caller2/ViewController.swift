//
//  ViewController.swift
//  Cold Caller2
//
//  Created by Admin on 11/1/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Number: UILabel!
    let people = ["Pierce", "Jason", "David", "Jack", "Jacob", "Riccardo", "Bret"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func callNext(_ sender: UIButton) {
        let personNumber = Int(arc4random_uniform(UInt32(people.count)))
        Name.text = people[personNumber]
        let theNumber = Int(arc4random_uniform(UInt32(5) + 1))
        Number.text = String(theNumber)
        if Number.text == "1" || Number.text == "2"{
            Number.textColor = UIColor.red
        }
        else if Number.text == "3" || Number.text == "4"{
            Number.textColor = UIColor.orange
        }
        else if Number.text == "5"{
            Number.textColor = UIColor.green
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

