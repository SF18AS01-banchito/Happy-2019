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

    @IBOutlet weak var beforeCount: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var askDate: UITextField!
    @IBOutlet weak var afterCount: UILabel!
    @IBOutlet weak var reallyAfterCount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        askDate.isHidden = true;
        date.isHidden = true;
        beforeCount.isHidden = true;
    }
    
    
    @IBAction func senDate(_ sender: UITextField) {
        sender.resignFirstResponder();
        let d: Int = Int(askDate.text!)!;
        let _: Int = d - (12312019);
        //reallyAfterCount.text = "There are \(String(daysRemain)) to 2019";
        
    }
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        
        lightOn = !lightOn;
        updateUI();
        
        switch sender.direction.rawValue {
            case 1:
            mainLabel.text = "Welcome to 2019!";
            askDate.isHidden = false;
            date.isHidden = false;
            beforeCount.isHidden = false;
            case 2:
            mainLabel.text = "Live long and prosper!";
            askDate.isHidden = false;
            date.isHidden = false;
            beforeCount.isHidden = false;
            case 4:
            askDate.isHidden = false;
            date.isHidden = false;
            beforeCount.isHidden = false;
            mainLabel.text = "There are "
            case 8:
            mainLabel.text = " Seize The Day ";
            askDate.isHidden = false;
            date.isHidden = false;
            beforeCount.isHidden = false;
            default:
            mainLabel.text = " unreacognized direction ";
            
            }
        
        
  /**
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        print("swipeUp");
        lightOn = !lightOn;
        mainLabel.text = "Live long and prosper!";
        updateUI();
 **/
    }
  
    
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black;
        
    }
    

}

