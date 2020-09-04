//
//  ViewController.swift
//  Advanced Clicker Final
//
//  Created by Kiera Nadine M Nazri on 4/9/20.
//  Copyright © 2020 Kiera Nadine M Nazri. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var counter = 0
    var time = 0.0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    @objc func update() {
        time += 0.1
        
    }
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        label.text = "\(counter)"
        if counter == 30 {
            print("YOU'RE DONE!")
            print("YOU TOOK \(time) seconds")
            performSegue(withIdentifier: "unwindToScores", sender: self)
        }
    }
    

}

