//
//  ViewController.swift
//  Project 1
//
//  Created by Akhil Waghmare on 6/8/16.
//  Copyright © 2016 AW Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func counterStep(sender: AnyObject) {
        counter = counter + 1
        counterLabel.text =  "\(counter)"
    }
    
    @IBAction func resetCounter(sender: AnyObject) {
        counter = 0
        counterLabel.text =  "\(counter)"
    }


}

