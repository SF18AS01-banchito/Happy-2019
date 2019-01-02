//
//  ViewController.swift
//  Happy 2019
//
//  Created by Esteban Ordonez on 1/1/19.
//  Copyright © 2019 Esteban Ordonez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn : Bool = true;

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        print("swipeDown");
        lightOn = !lightOn;
        mainLabel.text = "Welcome to 2019!";
        updateUI();
    }
    
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        print("swipeUp");
        lightOn = !lightOn;
        mainLabel.text = "Live long and prosper!";
        updateUI();
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black;
        
    }


}

