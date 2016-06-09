//
//  ViewController.swift
//  Project 2
//
//  Created by Akhil Waghmare on 6/8/16.
//  Copyright © 2016 AW Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    var counter = 0
    var timer: NSTimer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.normalTap))
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longTap))
        tapGesture.numberOfTapsRequired = 1
        counterButton.addGestureRecognizer(tapGesture)
        counterButton.addGestureRecognizer(longGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func normalTap() {
        counter = counter + 1
        counterLabel.text = "\(counter)"
    }
    
    func longTap(sender: UIGestureRecognizer) {
        if sender.state == .Ended {
            timer!.invalidate()
        }
        else if sender.state == .Began {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: #selector(ViewController.stepCounter), userInfo: nil, repeats: true)
            timer!.fire()
        }
    }
    
    func stepCounter() {
        counter = counter + 1
        counterLabel.text = "\(counter)"
    }

    @IBAction func resetCounter(sender: AnyObject) {
        counter = 0
        counterLabel.text = "\(counter)"
    }

}

